.class public Lcom/iot/engine/GoRemote/RemoteDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RemoteDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;
    }
.end annotation


# instance fields
.field btnSubmit:Landroid/widget/Button;

.field companyModel:Ljava/lang/String;

.field companyName:Ljava/lang/String;

.field db:LDatabase/DatabaseHandler;

.field edtCompanyModel:Landroid/widget/EditText;

.field edtCompanyName:Landroid/widget/EditText;

.field edtRemoteName:Landroid/widget/EditText;

.field imgBack:Landroid/widget/ImageView;

.field mRemoteType:Ljava/lang/String;

.field remoteName:Ljava/lang/String;

.field spinner:Landroid/widget/Spinner;

.field towerID:[Ljava/lang/String;

.field private towerId:Ljava/lang/String;

.field towerList:[Ljava/lang/String;

.field private towerName:Ljava/lang/String;

.field txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyModel:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->mRemoteType:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$102(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/RemoteDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/RemoteDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->setAdapter()V

    return-void
.end method

.method private initializeControls()V
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f0d0216

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->edtCompanyName:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0d0217

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->edtCompanyModel:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f0d0215

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->edtRemoteName:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->btnSubmit:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->spinner:Landroid/widget/Spinner;

    .line 73
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->imgBack:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->txtHeading:Landroid/widget/TextView;

    .line 75
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->db:LDatabase/DatabaseHandler;

    .line 77
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Select Remote"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->spinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;-><init>(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 93
    return-void
.end method

.method private isFieldSubmitted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->edtCompanyName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyName:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->edtCompanyModel:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyModel:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->edtRemoteName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "Enter Company Name"

    invoke-direct {p0, v1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->myToast(Ljava/lang/String;)V

    .line 160
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "Enter Company Model"

    invoke-direct {p0, v1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "Enter Remote Name"

    invoke-direct {p0, v1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private myToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerList:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 62
    .local v0, "aa":Landroid/widget/ArrayAdapter;
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 63
    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 102
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->isFieldSubmitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->mRemoteType:Ljava/lang/String;

    const-string v1, "TV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerName:Ljava/lang/String;

    iget-object v5, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, LDatabase/DatabaseHandler;->saveTvRemoteDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->getRemoteId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "mRemoteId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Info"

    const-string v2, "TV"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_tower_id"

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->finish()V

    goto :goto_0

    .line 112
    .end local v6    # "mRemoteId":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->mRemoteType:Ljava/lang/String;

    const-string v1, "Music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerName:Ljava/lang/String;

    iget-object v5, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, LDatabase/DatabaseHandler;->saveMusicRemoteDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->getRemoteId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6    # "mRemoteId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Info"

    const-string v2, "Music"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_tower_id"

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->finish()V

    goto/16 :goto_0

    .line 118
    .end local v6    # "mRemoteId":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->mRemoteType:Ljava/lang/String;

    const-string v1, "AC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->companyModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerName:Ljava/lang/String;

    iget-object v5, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, LDatabase/DatabaseHandler;->saveACRemoteDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->remoteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->getRemoteId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .restart local v6    # "mRemoteId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Info"

    const-string v2, "AC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_tower_id"

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->finish()V

    goto/16 :goto_0

    .line 131
    .end local v6    # "mRemoteId":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->finish()V

    goto/16 :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ea -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040093

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->initializeControls()V

    .line 55
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->mRemoteType:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;-><init>(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method
