# Nmax
Оформлено в виде gem. Скрипт находит n наибольших чисел из входящего потока с текстом

## Установка
Версия ruby-2.7.2

```ruby
git clone git@github.com:IgorKorp/nmax.git
cd nmax
bundle install
gem build nmax.gemspec
gem install nmax-0.1.1.gem 
```

## Пример использования:
```bash
cat sample_data_40GB.txt | nmax 10
```
