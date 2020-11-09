.class public Lcom/iot/engine/EditShareControl;
.super Landroid/support/v7/app/AppCompatActivity;
.source "EditShareControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/EditShareControl$AsyncUpdateUser;
    }
.end annotation


# instance fields
.field btnShare:Landroid/widget/Button;

.field edtEmail:Landroid/widget/EditText;

.field edtMobile:Landroid/widget/EditText;

.field private guestDay:Ljava/lang/String;

.field guestExpiryDay:Landroid/widget/EditText;

.field imgBack:Landroid/widget/ImageView;

.field mEmail:Ljava/lang/String;

.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedUser:Ljava/lang/String;

.field mUserID:Ljava/lang/String;

.field radioAdmin:Landroid/widget/RadioButton;

.field radioGuestuser:Landroid/widget/RadioButton;

.field radioModerateuser:Landroid/widget/RadioButton;

.field radioNormal:Landroid/widget/RadioButton;

.field private rgShareName:Landroid/widget/RadioGroup;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 47
    const-string v0, "NA"

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->guestDay:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/iot/engine/EditShareControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/EditShareControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iot/engine/EditShareControl;->mSelectedUser:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/EditShareControl;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/EditShareControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iot/engine/EditShareControl;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/EditShareControl;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/EditShareControl;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iot/engine/EditShareControl;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iot/engine/EditShareControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/EditShareControl;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iot/engine/EditShareControl;->createJSONBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/EditShareControl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/EditShareControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/iot/engine/EditShareControl;->parseResult(Ljava/lang/String;)V

    return-void
.end method

.method private createJSONBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 311
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 312
    .local v0, "jMain":Lorg/json/JSONObject;
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, "manager":LSession/SessionManager;
    :try_start_0
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/EditShareControl;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v2, "newUserType"

    iget-object v3, p0, Lcom/iot/engine/EditShareControl;->mSelectedUser:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v2, "adminUserId"

    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v2, "validityDate"

    iget-object v3, p0, Lcom/iot/engine/EditShareControl;->guestDay:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 319
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 88
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->edtEmail:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0d013a

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->edtMobile:Landroid/widget/EditText;

    .line 90
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->guestExpiryDay:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f0d013c

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->radioAdmin:Landroid/widget/RadioButton;

    .line 93
    const v0, 0x7f0d013d

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->radioModerateuser:Landroid/widget/RadioButton;

    .line 94
    const v0, 0x7f0d013e

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->radioNormal:Landroid/widget/RadioButton;

    .line 95
    const v0, 0x7f0d013f

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->radioGuestuser:Landroid/widget/RadioButton;

    .line 96
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->imgBack:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->btnShare:Landroid/widget/Button;

    .line 98
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->txtHeading:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0d013b

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->rgShareName:Landroid/widget/RadioGroup;

    .line 100
    iget-object v0, p0, Lcom/iot/engine/EditShareControl;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Edit ShareControl"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/iot/engine/EditShareControl;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/iot/engine/EditShareControl;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/iot/engine/EditShareControl;->btnShare:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/iot/engine/EditShareControl;->rgShareName:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/iot/engine/EditShareControl$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/EditShareControl$1;-><init>(Lcom/iot/engine/EditShareControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 135
    return-void
.end method

.method private onClickOfUpadate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 151
    new-instance v4, LSession/SessionManager;

    invoke-direct {v4, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 153
    .local v4, "sessionManager":LSession/SessionManager;
    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 154
    invoke-virtual {v4}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/iot/engine/EditShareControl;->validateUser()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    invoke-virtual {v4}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DemoUser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 160
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 161
    const v5, 0x7f04004e

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 162
    const v5, 0x7f0d0131

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 163
    .local v3, "edtPasswordShareControl":Landroid/widget/EditText;
    const v5, 0x7f0d00a5

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .local v1, "btnok":Landroid/widget/TextView;
    const v5, 0x7f0d00d7

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    .local v0, "btncancel":Landroid/widget/TextView;
    new-instance v5, Lcom/iot/engine/EditShareControl$2;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/iot/engine/EditShareControl$2;-><init>(Lcom/iot/engine/EditShareControl;Landroid/widget/EditText;LSession/SessionManager;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance v5, Lcom/iot/engine/EditShareControl$3;

    invoke-direct {v5, p0, v2}, Lcom/iot/engine/EditShareControl$3;-><init>(Lcom/iot/engine/EditShareControl;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 227
    .end local v0    # "btncancel":Landroid/widget/TextView;
    .end local v1    # "btnok":Landroid/widget/TextView;
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v3    # "edtPasswordShareControl":Landroid/widget/EditText;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/iot/engine/EditShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :cond_2
    const-string v5, "Kindly check internet connection..!"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 220
    :cond_3
    const-string v5, "Oops you don\'t have any authority to edit the control."

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :cond_4
    const-string v5, "You are Demo User."

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private parseResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "response":Lorg/json/JSONObject;
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v1, "Home share Control updated successfully."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 303
    invoke-virtual {p0}, Lcom/iot/engine/EditShareControl;->finish()V

    .line 308
    .end local v0    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 305
    .restart local v0    # "response":Lorg/json/JSONObject;
    :cond_0
    const-string v1, "Kindly try again."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setUserData()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/iot/engine/EditShareControl;->edtEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->mMap:Ljava/util/HashMap;

    const-string v3, "email"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcom/iot/engine/EditShareControl;->edtMobile:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->mMap:Ljava/util/HashMap;

    const-string v3, "phoneNumber"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->edtEmail:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 65
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->edtMobile:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->mMap:Ljava/util/HashMap;

    const-string v2, "userType"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "mUserType":Ljava/lang/String;
    const-string v1, "Admin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "0"

    iput-object v1, p0, Lcom/iot/engine/EditShareControl;->mSelectedUser:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->radioAdmin:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 82
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->mMap:Ljava/util/HashMap;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/iot/engine/EditShareControl;->mUserID:Ljava/lang/String;

    .line 85
    .end local v0    # "mUserType":Ljava/lang/String;
    :goto_1
    return-void

    .line 71
    .restart local v0    # "mUserType":Ljava/lang/String;
    :cond_1
    const-string v1, "Moderate User"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const-string v1, "1"

    iput-object v1, p0, Lcom/iot/engine/EditShareControl;->mSelectedUser:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->radioModerateuser:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 84
    .end local v0    # "mUserType":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 74
    .restart local v0    # "mUserType":Ljava/lang/String;
    :cond_2
    const-string v1, "Normal User"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    const-string v1, "2"

    iput-object v1, p0, Lcom/iot/engine/EditShareControl;->mSelectedUser:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->radioNormal:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v1, "Guest User"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "3"

    iput-object v1, p0, Lcom/iot/engine/EditShareControl;->mSelectedUser:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/iot/engine/EditShareControl;->radioGuestuser:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private validateUser()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    const-string v6, "NA"

    iput-object v6, p0, Lcom/iot/engine/EditShareControl;->guestDay:Ljava/lang/String;

    .line 231
    iget-object v6, p0, Lcom/iot/engine/EditShareControl;->mSelectedUser:Ljava/lang/String;

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    iget-object v6, p0, Lcom/iot/engine/EditShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "days":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    const-string v5, "Kindly enter guest user day"

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 253
    .end local v1    # "days":Ljava/lang/String;
    :goto_0
    return v4

    .line 236
    .restart local v1    # "days":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 237
    const-string v5, "Kindly permit atleast 1 day"

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/iot/engine/EditShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "exDays":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 244
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 245
    const/4 v4, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 246
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iot/engine/EditShareControl;->guestDay:Ljava/lang/String;

    move v4, v5

    .line 248
    goto :goto_0

    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "days":Ljava/lang/String;
    .end local v2    # "exDays":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    move v4, v5

    .line 253
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 141
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/EditShareControl;->onClickOfUpadate()V

    goto :goto_0

    .line 144
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/EditShareControl;->finish()V

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x7f0d00b9 -> :sswitch_0
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
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditShareControl;->setContentView(I)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->mMap:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p0}, Lcom/iot/engine/EditShareControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/iot/engine/EditShareControl;->mMap:Ljava/util/HashMap;

    .line 56
    invoke-direct {p0}, Lcom/iot/engine/EditShareControl;->initControl()V

    .line 57
    invoke-direct {p0}, Lcom/iot/engine/EditShareControl;->setUserData()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 326
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 327
    return-void
.end method
