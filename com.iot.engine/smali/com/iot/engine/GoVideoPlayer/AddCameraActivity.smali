.class public Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AddCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;
    }
.end annotation


# static fields
.field private static final PATTERN:Ljava/lang/String; = "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

.field private static final TAG:Ljava/lang/String; = "AddCameraActivity"


# instance fields
.field btnSave:Landroid/widget/Button;

.field private camera_type:[Ljava/lang/String;

.field private camera_type_id:[Ljava/lang/String;

.field private db:LDatabase/DatabaseHandler;

.field private edtCameraName:Landroid/widget/EditText;

.field private edtIpAddress:Landroid/widget/EditText;

.field private edtPort:Landroid/widget/EditText;

.field private etInternetAddress:Landroid/widget/EditText;

.field private etInternetPort:Landroid/widget/EditText;

.field private etPassword:Landroid/widget/EditText;

.field private etUserName:Landroid/widget/EditText;

.field iFirstSelection:Z

.field private imgBack:Landroid/widget/ImageView;

.field private llHidden:Landroid/widget/LinearLayout;

.field private mCameraName:Ljava/lang/String;

.field private mCameraTypeID:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mIPAddress:Ljava/lang/String;

.field private mInternetIp:Ljava/lang/String;

.field private mInternetPort:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private sessionManager:LSession/SessionManager;

.field private spinner:Landroid/widget/Spinner;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mInternetIp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mInternetPort:Ljava/lang/String;

    .line 60
    const-string v0, "NA"

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mID:Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Classical"

    aput-object v1, v0, v2

    const-string v1, "Standard"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->camera_type:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    const-string v1, "2"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->camera_type_id:[Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->iFirstSelection:Z

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraTypeID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraTypeID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->camera_type_id:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mInternetIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mInternetPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->llHidden:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method private initializeControls()V
    .locals 3

    .prologue
    .line 85
    const v1, 0x7f0d00b1

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtCameraName:Landroid/widget/EditText;

    .line 86
    const v1, 0x7f0d00b2

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtIpAddress:Landroid/widget/EditText;

    .line 87
    const v1, 0x7f0d00b3

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtPort:Landroid/widget/EditText;

    .line 88
    const v1, 0x7f0d00b4

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etInternetAddress:Landroid/widget/EditText;

    .line 89
    const v1, 0x7f0d00b5

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etInternetPort:Landroid/widget/EditText;

    .line 90
    const v1, 0x7f0d00b7

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etUserName:Landroid/widget/EditText;

    .line 91
    const v1, 0x7f0d00b8

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etPassword:Landroid/widget/EditText;

    .line 93
    const v1, 0x7f0d00b9

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->btnSave:Landroid/widget/Button;

    .line 94
    const v1, 0x7f0d00b0

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spinner:Landroid/widget/Spinner;

    .line 95
    const v1, 0x7f0d00b6

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->llHidden:Landroid/widget/LinearLayout;

    .line 97
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->txtHeading:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->imgBack:Landroid/widget/ImageView;

    .line 99
    new-instance v1, LDatabase/DatabaseHandler;

    invoke-direct {v1, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->db:LDatabase/DatabaseHandler;

    .line 101
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 108
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "camera_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mID:Ljava/lang/String;

    .line 109
    invoke-direct {p0, v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->setEditText(Ljava/util/HashMap;)V

    .line 110
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->btnSave:Landroid/widget/Button;

    const-string v2, "Update"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->txtHeading:Landroid/widget/TextView;

    const-string v2, "Edit CameraInfo"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const-string v1, "camera_type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraTypeID:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraTypeID:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 125
    .end local v0    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;

    invoke-direct {v2, p0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;-><init>(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    return-void

    .line 117
    .restart local v0    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 121
    .end local v0    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v1, "1"

    iput-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraTypeID:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->txtHeading:Landroid/widget/TextView;

    const-string v2, "Add CameraInfo"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onClickOfSaveButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtCameraName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraName:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtIpAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mIPAddress:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtPort:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mPort:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etInternetAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mInternetIp:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etInternetPort:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mInternetPort:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etUserName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mUserName:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mPassword:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "Kindly enter camera name"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mIPAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "Kindly local enter IP"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mPort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "Kindly enter port number"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mIPAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    const-string v0, "Kindly enter valid IP"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mCameraTypeID:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    :cond_4
    const-string v0, "Kindly enter security details"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 232
    :cond_5
    new-instance v0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;-><init>(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setEditText(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtCameraName:Landroid/widget/EditText;

    const-string v0, "camera_name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etInternetAddress:Landroid/widget/EditText;

    const-string v0, "camera_internet_ip"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etInternetPort:Landroid/widget/EditText;

    const-string v0, "camera_internet_port"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtIpAddress:Landroid/widget/EditText;

    const-string v0, "camera_local_ip"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->edtPort:Landroid/widget/EditText;

    const-string v0, "camera_local_port"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etUserName:Landroid/widget/EditText;

    const-string v0, "camera_username"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->etPassword:Landroid/widget/EditText;

    const-string v0, "camera_password"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method private setSpinnerAdapter()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->camera_type:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 155
    .local v0, "aa":Landroid/widget/ArrayAdapter;
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 156
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 157
    return-void
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v2, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 247
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 248
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 178
    :sswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->finish()V

    goto :goto_0

    .line 181
    :sswitch_1
    invoke-direct {p0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->onClickOfSaveButton()V

    goto :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x7f0d00b9 -> :sswitch_1
        0x7f0d0156 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->setContentView(I)V

    .line 77
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->sessionManager:LSession/SessionManager;

    .line 78
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->db:LDatabase/DatabaseHandler;

    .line 79
    invoke-direct {p0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->initializeControls()V

    .line 80
    invoke-direct {p0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->setSpinnerAdapter()V

    .line 81
    return-void
.end method
