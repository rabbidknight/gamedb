// CAROUSEL
export default function List() {

  const resim1 = "https://upload.wikimedia.org/wikipedia/tr/5/53/TheWitcher3-WildHunt.KapakResmi.png?20140605204232"
  const resim2 = "https://upload.wikimedia.org/wikipedia/tr/thumb/1/12/Baldur%27s_Gate_3_cover_art.jpg/220px-Baldur%27s_Gate_3_cover_art.jpg"
  const resim3 = "https://upload.wikimedia.org/wikipedia/tr/thumb/e/ee/Detroit_Become_Human.jpg/250px-Detroit_Become_Human.jpg"


  const backgroundStyle1 = {
    background: `url('${resim1}')`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: '50%',
    backgroundSize: 'cover',
  };

  const backgroundStyle2 = {
    background: `url('${resim2}')`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: '50%',
    backgroundSize: 'cover',
  };

  const backgroundStyle3 = {
    background: `url('${resim3}')`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: '50%',
    backgroundSize: 'cover',
  };

    return(
<div className="container">
  <div className="outercontent" style={backgroundStyle1}>
    <div className="content">
     <h2>The Withcer 3</h2>
      <span>Action/Adventure</span>
    </div>
  </div>
  <div className="outercontent" style={backgroundStyle2}>
    <div className="content">
      <h2>Baldurs gate 3</h2>
      <span>Turn-Based/RPG</span>
    </div>
  </div>
  <div className="outercontent" style={backgroundStyle3}>
    <div className="content">
      <h2>Detroit: Become Human</h2>
      <span>Nice-Story/Adventure</span>
    </div>
  </div>
  <div className="outercontent">
    <div className="content">
      <h2>...</h2>
      <span>...</span>
    </div>
  </div>
  <div className="outercontent">
    <div className="content">
      <h2>...</h2>
      <span>...</span>
    </div>
  </div>
  
  
</div>)
}