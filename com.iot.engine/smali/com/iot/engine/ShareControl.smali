.class public Lcom/iot/engine/ShareControl;
.super Landroid/app/Activity;
.source "ShareControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareControl"


# instance fields
.field private adminUser:Landroid/widget/TextView;

.field private btnClose:Landroid/widget/TextView;

.field btnShare:Landroid/widget/Button;

.field edtEmail:Landroid/widget/EditText;

.field edtPhoneNo:Landroid/widget/EditText;

.field private guestDays:Ljava/lang/String;

.field guestExpiryDay:Landroid/widget/EditText;

.field private guestUser:Landroid/widget/TextView;

.field imgBack:Landroid/widget/ImageView;

.field imgHelp:Landroid/widget/ImageView;

.field private mEmail:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSelectedUser:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private moderateUser:Landroid/widget/TextView;

.field private normalUser:Landroid/widget/TextView;

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
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const-string v0, "NA"

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->guestDays:Ljava/lang/String;

    return-void
.end method

.method private ParseShareResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "strURLFlag"    # Ljava/lang/String;

    .prologue
    .line 370
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "response":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 374
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->finish()V

    .line 399
    .end local v1    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 378
    .restart local v1    # "response":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "dialogs":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 380
    const v5, 0x7f04001d

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 381
    const v5, 0x7f0d00a5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 382
    .local v4, "txtOk":Landroid/widget/TextView;
    const v5, 0x7f0d00a3

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 383
    .local v3, "txtHeader":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 384
    .local v2, "tvMessage":Landroid/widget/TextView;
    const-string v5, "Alert !"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    new-instance v5, Lcom/iot/engine/ShareControl$5;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/ShareControl$5;-><init>(Lcom/iot/engine/ShareControl;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v0    # "dialogs":Landroid/app/Dialog;
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "tvMessage":Landroid/widget/TextView;
    .end local v3    # "txtHeader":Landroid/widget/TextView;
    .end local v4    # "txtOk":Landroid/widget/TextView;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/iot/engine/ShareControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ShareControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iot/engine/ShareControl;->mSelectedUser:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/ShareControl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ShareControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/iot/engine/ShareControl;->myToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/ShareControl;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ShareControl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iot/engine/ShareControl;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ShareControl;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iot/engine/ShareControl;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/ShareControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ShareControl;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/iot/engine/ShareControl;->createJSONBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/ShareControl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ShareControl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/iot/engine/ShareControl;->ParseShareResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createJSONBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 358
    .local v0, "jMain":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "email"

    iget-object v2, p0, Lcom/iot/engine/ShareControl;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v1, "userType"

    iget-object v2, p0, Lcom/iot/engine/ShareControl;->mSelectedUser:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v1, "adminUserId"

    iget-object v2, p0, Lcom/iot/engine/ShareControl;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/iot/engine/ShareControl;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v1, "validityDate"

    iget-object v2, p0, Lcom/iot/engine/ShareControl;->guestDays:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 364
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initializeControls()V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->edtEmail:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0d0251

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->edtPhoneNo:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0d013c

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->radioAdmin:Landroid/widget/RadioButton;

    .line 70
    const v0, 0x7f0d013d

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->radioModerateuser:Landroid/widget/RadioButton;

    .line 71
    const v0, 0x7f0d013f

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->radioGuestuser:Landroid/widget/RadioButton;

    .line 72
    const v0, 0x7f0d0252

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->radioNormal:Landroid/widget/RadioButton;

    .line 74
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->imgBack:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->btnShare:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->txtHeading:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0d013b

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->rgShareName:Landroid/widget/RadioGroup;

    .line 78
    const v0, 0x7f0d0266

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->imgHelp:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ShareControl;->guestExpiryDay:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->btnShare:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->imgHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->radioGuestuser:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->rgShareName:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/iot/engine/ShareControl$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/ShareControl$1;-><init>(Lcom/iot/engine/ShareControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 128
    return-void
.end method

.method private isFieldSubmtted()Z
    .locals 9

    .prologue
    const v8, 0x7f060085

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    const-string v6, "NA"

    iput-object v6, p0, Lcom/iot/engine/ShareControl;->guestDays:Ljava/lang/String;

    .line 267
    iget-object v6, p0, Lcom/iot/engine/ShareControl;->edtPhoneNo:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iot/engine/ShareControl;->myToast(Ljava/lang/String;)V

    .line 302
    :goto_0
    return v4

    .line 270
    :cond_0
    iget-object v6, p0, Lcom/iot/engine/ShareControl;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iot/engine/ShareControl;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->validateEmail()Z

    move-result v6

    if-nez v6, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iot/engine/ShareControl;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v6, p0, Lcom/iot/engine/ShareControl;->radioAdmin:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/iot/engine/ShareControl;->radioNormal:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/iot/engine/ShareControl;->radioModerateuser:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/iot/engine/ShareControl;->radioGuestuser:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iot/engine/ShareControl;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v6, p0, Lcom/iot/engine/ShareControl;->mSelectedUser:Ljava/lang/String;

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 280
    iget-object v6, p0, Lcom/iot/engine/ShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "mDays":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 282
    const-string v5, "Kindly enter guest user days"

    invoke-direct {p0, v5}, Lcom/iot/engine/ShareControl;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 286
    const-string v5, "Kindly permit atleast 1 day"

    invoke-direct {p0, v5}, Lcom/iot/engine/ShareControl;->myToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_5
    iget-object v4, p0, Lcom/iot/engine/ShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "days":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 293
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 294
    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 295
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iot/engine/ShareControl;->guestDays:Ljava/lang/String;

    .line 297
    const-string v4, "ShareControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFieldSubmtted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/ShareControl;->guestDays:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 298
    goto/16 :goto_0

    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "days":Ljava/lang/String;
    .end local v2    # "mDays":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6
    move v4, v5

    .line 302
    goto/16 :goto_0
.end method

.method private myToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 134
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/ShareControl;->isFieldSubmtted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 136
    iget-object v10, p0, Lcom/iot/engine/ShareControl;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->mEmail:Ljava/lang/String;

    .line 137
    iget-object v10, p0, Lcom/iot/engine/ShareControl;->edtPhoneNo:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->mPhoneNumber:Ljava/lang/String;

    .line 138
    new-instance v5, LSession/SessionManager;

    invoke-direct {v5, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 139
    .local v5, "session":LSession/SessionManager;
    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->mUserId:Ljava/lang/String;

    .line 140
    invoke-virtual {v5}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DemoUser"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 141
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 144
    const v10, 0x7f04004e

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 145
    const v10, 0x7f0d0131

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 146
    .local v4, "edtPasswordShareControl":Landroid/widget/EditText;
    const v10, 0x7f0d00a5

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    .local v1, "btnok":Landroid/widget/TextView;
    const v10, 0x7f0d00d7

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    .local v0, "btncancel":Landroid/widget/TextView;
    new-instance v10, Lcom/iot/engine/ShareControl$2;

    invoke-direct {v10, p0, v4, v2}, Lcom/iot/engine/ShareControl$2;-><init>(Lcom/iot/engine/ShareControl;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v10, Lcom/iot/engine/ShareControl$3;

    invoke-direct {v10, p0, v2}, Lcom/iot/engine/ShareControl$3;-><init>(Lcom/iot/engine/ShareControl;Landroid/app/Dialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 193
    .end local v0    # "btncancel":Landroid/widget/TextView;
    .end local v1    # "btnok":Landroid/widget/TextView;
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v4    # "edtPasswordShareControl":Landroid/widget/EditText;
    :cond_1
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060083

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 205
    .end local v5    # "session":LSession/SessionManager;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->finish()V

    goto/16 :goto_0

    .line 209
    :sswitch_2
    new-instance v3, Landroid/app/Dialog;

    const v10, 0x1030010

    invoke-direct {v3, p0, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 210
    .local v3, "dialogsa":Landroid/app/Dialog;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 211
    const v10, 0x7f0400ac

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 212
    const v10, 0x7f0d0258

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->btnClose:Landroid/widget/TextView;

    .line 213
    const v10, 0x7f0d0254

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->adminUser:Landroid/widget/TextView;

    .line 214
    const v10, 0x7f0d0255

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->moderateUser:Landroid/widget/TextView;

    .line 215
    const v10, 0x7f0d0256

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->normalUser:Landroid/widget/TextView;

    .line 216
    const v10, 0x7f0d0257

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/iot/engine/ShareControl;->guestUser:Landroid/widget/TextView;

    .line 218
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v10, "Admin User : All the features and controls of home is accessible to this user.\n Switching ON/OFF,Create,edit and delete Switch & Profile Schedular,Create Profile,Hide Room & Switch,Lock Switch,Bubble Blast of activities,Share control,Arm/DisArm home for security,Setting or editing Lock Code/Pass Code for Home lock"

    invoke-direct {v6, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    .local v6, "str":Landroid/text/SpannableStringBuilder;
    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/16 v13, 0x21

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 223
    iget-object v10, p0, Lcom/iot/engine/ShareControl;->adminUser:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v7, Landroid/text/SpannableStringBuilder;

    const-string v10, "Moderate User : All the authorities mentioned in admin user are assigned to Moderate User except Sharing Control to another user."

    invoke-direct {v7, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 226
    .local v7, "str1":Landroid/text/SpannableStringBuilder;
    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v11, 0x0

    const/16 v12, 0xd

    const/16 v13, 0x21

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 227
    iget-object v10, p0, Lcom/iot/engine/ShareControl;->moderateUser:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string v10, "Normal User : This user can perform operations like Turn ON/OFF switch,TURN_ON_ALL,TURN_OFF_ALL etc.\nThis user cannnot use Share Control function,Hide Room/Switch,Lock/Unlock switch,Unlock the Home,Set or edit Lock Code/Pass Code for Home lock"

    invoke-direct {v8, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    .local v8, "str2":Landroid/text/SpannableStringBuilder;
    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v11, 0x0

    const/16 v12, 0xb

    const/16 v13, 0x21

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 231
    iget-object v10, p0, Lcom/iot/engine/ShareControl;->normalUser:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v9, Landroid/text/SpannableStringBuilder;

    const-string v10, "Guest User : Guest User have same authorities like normal user however,Guest user is just for some period after that period it will be automatically get log out."

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    .local v9, "str3":Landroid/text/SpannableStringBuilder;
    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/16 v13, 0x21

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 235
    iget-object v10, p0, Lcom/iot/engine/ShareControl;->guestUser:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v10, p0, Lcom/iot/engine/ShareControl;->btnClose:Landroid/widget/TextView;

    new-instance v11, Lcom/iot/engine/ShareControl$4;

    invoke-direct {v11, p0, v3}, Lcom/iot/engine/ShareControl$4;-><init>(Lcom/iot/engine/ShareControl;Landroid/app/Dialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x7f0d00b9 -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
        0x7f0d0266 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0400aa

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControl;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/iot/engine/ShareControl;->initializeControls()V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 406
    invoke-virtual {p0}, Lcom/iot/engine/ShareControl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 407
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 408
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 417
    :pswitch_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0282
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 312
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 313
    iget-object v0, p0, Lcom/iot/engine/ShareControl;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Share Control"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method public validateEmail()Z
    .locals 3

    .prologue
    .line 253
    iget-object v2, p0, Lcom/iot/engine/ShareControl;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "emailInput":Ljava/lang/String;
    const-string v1, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 257
    .local v1, "emailPattern":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    const/4 v2, 0x0

    .line 260
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
