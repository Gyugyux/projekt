using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace vizsgaremek
{
    public partial class MainWindow : Window
    {
        private List<Customer> _customers = new();

        public MainWindow()
        {
            InitializeComponent();
            DatabaseHelper.InitializeDatabase();
            LoadCustomers();
        }

        private void LoadCustomers()
        {
            _customers = CustomerRepository.GetAll();
            CustomersDataGrid.ItemsSource = _customers;
        }

        private void AddCustomer_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(NameTextBox.Text) || string.IsNullOrWhiteSpace(EmailTextBox.Text))
            {
                MessageBox.Show("Töltsd ki mindkét mezőt!");
                return;
            }

            var customer = new Customer
            {
                Name = NameTextBox.Text,
                Email = EmailTextBox.Text
            };

            try
            {
                CustomerRepository.Add(customer);
                LoadCustomers();
                ClearForm();
                MessageBox.Show("Ügyfél hozzáadva!");
            }
            catch (System.Exception ex)
            {
                MessageBox.Show($"Hiba történt: {ex.Message}");
            }
        }

        private void UpdateCustomer_Click(object sender, RoutedEventArgs e)
        {
            if (CustomersDataGrid.SelectedItem is Customer selected)
            {
                selected.Name = NameTextBox.Text;
                selected.Email = EmailTextBox.Text;

                try
                {
                    CustomerRepository.Update(selected);
                    LoadCustomers();
                    ClearForm();
                    MessageBox.Show("Ügyfél módosítva!");
                }
                catch (System.Exception ex)
                {
                    MessageBox.Show($"Hiba történt: {ex.Message}");
                }
            }
            else
            {
                MessageBox.Show("Válassz ki egy ügyfelet a módosításhoz!");
            }
        }

        private void DeleteCustomer_Click(object sender, RoutedEventArgs e)
        {
            if (CustomersDataGrid.SelectedItem is Customer selected)
            {
                var result = MessageBox.Show($"Biztosan törlöd {selected.Name}?", "Megerősítés", MessageBoxButton.YesNo);
                if (result == MessageBoxResult.Yes)
                {
                    try
                    {
                        CustomerRepository.Delete(selected.Id);
                        LoadCustomers();
                        ClearForm();
                        MessageBox.Show("Ügyfél törölve!");
                    }
                    catch (System.Exception ex)
                    {
                        MessageBox.Show($"Hiba történt: {ex.Message}");
                    }
                }
            }
            else
            {
                MessageBox.Show("Válassz ki egy ügyfelet a törléshez!");
            }
        }

        private void CustomersDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CustomersDataGrid.SelectedItem is Customer selected)
            {
                NameTextBox.Text = selected.Name;
                EmailTextBox.Text = selected.Email;
            }
        }

        private void ClearForm()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            CustomersDataGrid.SelectedItem = null;
        }

        private void SearchTextBox_KeyUp(object sender, KeyEventArgs e)
        {
            string searchText = SearchTextBox.Text.ToLower();

            var filtered = _customers.Where(c =>
                c.Name.ToLower().Contains(searchText) ||
                c.Email.ToLower().Contains(searchText)).ToList();

            CustomersDataGrid.ItemsSource = filtered;
        }
    }
}