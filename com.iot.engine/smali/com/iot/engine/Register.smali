.class public Lcom/iot/engine/Register;
.super Landroid/app/Activity;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/Register$AsyncTaskForRegister;
    }
.end annotation


# static fields
.field private static final DIALOG_LOGIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Register"


# instance fields
.field private btnRegister:Landroid/widget/Button;

.field date:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private edittxt_date:Landroid/widget/EditText;

.field private edtConfirmPassword:Landroid/widget/EditText;

.field private edtEmail:Landroid/widget/EditText;

.field private edtFirstName:Landroid/widget/EditText;

.field private edtLastName:Landroid/widget/EditText;

.field private edtPassword:Landroid/widget/EditText;

.field private edtPhone:Landroid/widget/EditText;

.field private mEmailId:Ljava/lang/String;

.field private mOTP:Ljava/lang/String;

.field myCalendar:Ljava/util/Calendar;

.field selectDate:Ljava/lang/String;

.field private spotDialog:Ldmax/dialog/SpotsDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/Register;->myCalendar:Ljava/util/Calendar;

    .line 84
    new-instance v0, Lcom/iot/engine/Register$2;

    invoke-direct {v0, p0}, Lcom/iot/engine/Register$2;-><init>(Lcom/iot/engine/Register;)V

    iput-object v0, p0, Lcom/iot/engine/Register;->date:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/Register;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Register;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/iot/engine/Register;->updateLabel()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/Register;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Register;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/iot/engine/Register;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/Register;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Register;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/iot/engine/Register;->createJSONBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/Register;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Register;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/iot/engine/Register;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/iot/engine/Register;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Register;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/iot/engine/Register;->parseRegistrationResult(Ljava/lang/String;)V

    return-void
.end method

.method private closeProgressDialog()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/iot/engine/Register;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/Register;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/iot/engine/Register;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 246
    :cond_0
    return-void
.end method

.method private createJSONBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .local v0, "jMain":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/iot/engine/Register;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/Register;->mEmailId:Ljava/lang/String;

    .line 309
    :try_start_0
    const-string v1, "firstName"

    iget-object v2, p0, Lcom/iot/engine/Register;->edtFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v1, "lastName"

    iget-object v2, p0, Lcom/iot/engine/Register;->edtLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v1, "email"

    iget-object v2, p0, Lcom/iot/engine/Register;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/iot/engine/Register;->edtPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v1, "password"

    iget-object v2, p0, Lcom/iot/engine/Register;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v1, "userType"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "birthDate"

    iget-object v2, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
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

    .line 316
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createMapData()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 290
    .local v0, "jsonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/iot/engine/Register;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/Register;->mEmailId:Ljava/lang/String;

    .line 291
    const-string v2, "firstName"

    iget-object v3, p0, Lcom/iot/engine/Register;->edtFirstName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v2, "lastName"

    iget-object v3, p0, Lcom/iot/engine/Register;->edtLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v2, "email"

    iget-object v3, p0, Lcom/iot/engine/Register;->mEmailId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v2, "phoneNumber"

    iget-object v3, p0, Lcom/iot/engine/Register;->edtPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v2, "password"

    iget-object v3, p0, Lcom/iot/engine/Register;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v2, "userType"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v2, "birthDate"

    iget-object v3, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 298
    check-cast v1, Ljava/util/HashMap;

    .line 300
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v1
.end method

.method private initialseControls()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0d0211

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Register;->edtFirstName:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0d0212

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Register;->edtLastName:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Register;->edtEmail:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0d0213

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Register;->edtPhone:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Register;->edtPassword:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/Register;->btnRegister:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Register;->edtConfirmPassword:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/iot/engine/Register;->btnRegister:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    new-instance v1, Lcom/iot/engine/Register$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/Register$1;-><init>(Lcom/iot/engine/Register;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 83
    return-void
.end method

.method public static isDOBInRange(Ljava/lang/String;)Z
    .locals 12
    .param p0, "mBirthDate"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 172
    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    const-string v6, "dd/MM/yyyy"

    .line 174
    .local v6, "pattern":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "currDate":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 176
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 177
    const/4 v10, 0x1

    const/4 v11, -0x4

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 178
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 180
    .local v4, "dStart":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 181
    .local v1, "c1":Ljava/util/Calendar;
    invoke-virtual {v7, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 182
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 184
    .local v3, "dBirthDate":Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 191
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "c1":Ljava/util/Calendar;
    .end local v2    # "currDate":Ljava/lang/String;
    .end local v3    # "dBirthDate":Ljava/util/Date;
    .end local v4    # "dStart":Ljava/util/Date;
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return v8

    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "c1":Ljava/util/Calendar;
    .restart local v2    # "currDate":Ljava/lang/String;
    .restart local v3    # "dBirthDate":Ljava/util/Date;
    .restart local v4    # "dStart":Ljava/util/Date;
    .restart local v6    # "pattern":Ljava/lang/String;
    .restart local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    move v8, v9

    .line 187
    goto :goto_0

    .line 190
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "c1":Ljava/util/Calendar;
    .end local v2    # "currDate":Ljava/lang/String;
    .end local v3    # "dBirthDate":Ljava/util/Date;
    .end local v4    # "dStart":Ljava/util/Date;
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v9

    .line 191
    goto :goto_0
.end method

.method private isFieldSubmtted()Z
    .locals 5

    .prologue
    const v3, 0x7f060085

    const v4, 0x7f060084

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    iget-object v2, p0, Lcom/iot/engine/Register;->edtFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    .line 165
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/Register;->edtLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/Register;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/iot/engine/Register;->validateEmail()Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/iot/engine/Register;->edtPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/iot/engine/Register;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/iot/engine/Register;->edtConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_6

    .line 148
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget-object v2, p0, Lcom/iot/engine/Register;->edtConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/Register;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 152
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_7
    iget-object v2, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 157
    const-string v1, "Kindly select date."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 159
    :cond_8
    iget-object v2, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iot/engine/Register;->isDOBInRange(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 160
    const-string v1, "Kindly check birth date"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 165
    goto/16 :goto_0
.end method

.method private myToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method

.method private parseRegistrationResult(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 249
    invoke-direct {p0}, Lcom/iot/engine/Register;->createMapData()Ljava/util/HashMap;

    move-result-object v2

    .line 250
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 251
    const-string v5, "Register"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseRegistrationResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    .local v4, "response":Lorg/json/JSONObject;
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "msg":Ljava/lang/String;
    const-string v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/iot/engine/ResendOTP;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "data"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Lcom/iot/engine/Register;->startActivity(Landroid/content/Intent;)V

    .line 281
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 264
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "response":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "Email Already Present And Verified"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060080

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "response":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v5, "Email Already Present But Not Verified"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/iot/engine/ResendOTP;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "data"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v1}, Lcom/iot/engine/Register;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 279
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "response":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ldmax/dialog/SpotsDialog;

    const-string v1, " Kindly wait "

    invoke-direct {v0, p0, v1}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/iot/engine/Register;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 285
    iget-object v0, p0, Lcom/iot/engine/Register;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 286
    return-void
.end method

.method private updateLabel()V
    .locals 4

    .prologue
    .line 99
    const-string v0, "dd/MM/yyyy"

    .line 100
    .local v0, "myFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iot/engine/Register;->myCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Lcom/iot/engine/Register;->isFieldSubmtted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/iot/engine/Register;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/Register;->selectDate:Ljava/lang/String;

    .line 115
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/iot/engine/Register;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/Register;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    new-instance v1, Lcom/iot/engine/Register$AsyncTaskForRegister;

    invoke-direct {v1, p0}, Lcom/iot/engine/Register$AsyncTaskForRegister;-><init>(Lcom/iot/engine/Register;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/Register$AsyncTaskForRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v1, "Check internet connection!!!"

    invoke-direct {p0, v1}, Lcom/iot/engine/Register;->myToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/iot/engine/Register;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/iot/engine/Register;->initialseControls()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 325
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 326
    return-void
.end method

.method public validateEmail()Z
    .locals 3

    .prologue
    .line 201
    iget-object v2, p0, Lcom/iot/engine/Register;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "emailInput":Ljava/lang/String;
    const-string v1, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 206
    .local v1, "emailPattern":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    const/4 v2, 0x0

    .line 210
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
