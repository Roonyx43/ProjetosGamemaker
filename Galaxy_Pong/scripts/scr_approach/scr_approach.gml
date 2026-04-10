function approach(_speed, max_speed, acceleration)
{
    if (_speed < max_speed) {
        _speed += acceleration;
        if (_speed > max_speed) {
            return max_speed;
        }
    } else {
        _speed -= acceleration;
    
        if (_speed < max_speed) {
            return max_speed;
        }
    }
    
    return _speed;
}