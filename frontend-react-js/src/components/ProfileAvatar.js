import './ProfileAvatar.css';

export default function ProfileAvatar(props) {   
//   const backgroundImage = 'url("https://assets.harvestdam.com/avatars/${props.id}.jpg")';
  const backgroundImage = 'url("https://assets.harvestdam.com/avatars/data.jpg")';
  const styles = {
    backgroundImage: backgroundImage,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
  };

  return (
    <div 
      className="profile-avatar"
      style={styles}
      ></div>
  );
}