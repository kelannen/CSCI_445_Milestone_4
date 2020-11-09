.class public Lcom/iot/engine/ChangePasscode;
.super Landroid/app/Activity;
.source "ChangePasscode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangePasscode"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field btnCancel:Landroid/widget/Button;

.field btnClear:Landroid/widget/Button;

.field btnEight:Landroid/widget/Button;

.field btnFive:Landroid/widget/Button;

.field btnFour:Landroid/widget/Button;

.field btnNine:Landroid/widget/Button;

.field btnOne:Landroid/widget/Button;

.field btnSeven:Landroid/widget/Button;

.field btnSix:Landroid/widget/Button;

.field btnThree:Landroid/widget/Button;

.field btnTwo:Landroid/widget/Button;

.field btnZero:Landroid/widget/Button;

.field listString:Ljava/lang/String;

.field llAddCamera:Landroid/widget/LinearLayout;

.field llTitleScreen:Landroid/widget/LinearLayout;

.field lockcode:Ljava/lang/String;

.field private messageType:Ljava/lang/String;

.field newArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionManager:LSession/SessionManager;

.field txtFour:Landroid/widget/TextView;

.field txtOne:Landroid/widget/TextView;

.field txtThree:Landroid/widget/TextView;

.field txtTwo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/ChangePasscode;->listString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/ChangePasscode;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ChangePasscode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/iot/engine/ChangePasscode;->setPasscodeText()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/ChangePasscode;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ChangePasscode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/iot/engine/ChangePasscode;->compareFourDigitPasscode()V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/ChangePasscode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ChangePasscode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/ChangePasscode;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ChangePasscode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method private compareFourDigitPasscode()V
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 363
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iot/engine/ChangePasscode;->listString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/ChangePasscode;->listString:Ljava/lang/String;

    goto :goto_0

    .line 366
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;-><init>(Lcom/iot/engine/ChangePasscode;Lcom/iot/engine/ChangePasscode$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    :cond_1
    return-void
.end method

.method private initializeControls()V
    .locals 3

    .prologue
    .line 253
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->sessionManager:LSession/SessionManager;

    .line 255
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "session":LSession/SessionManager;
    sget-object v1, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v2, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Internet"

    :goto_0
    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->messageType:Ljava/lang/String;

    .line 259
    invoke-virtual {v0}, LSession/SessionManager;->getLockCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->lockcode:Ljava/lang/String;

    .line 261
    const v1, 0x7f0d0200

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->llAddCamera:Landroid/widget/LinearLayout;

    .line 262
    const v1, 0x7f0d01ff

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->llTitleScreen:Landroid/widget/LinearLayout;

    .line 264
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->llAddCamera:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->llTitleScreen:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    const v1, 0x7f0d0202

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    .line 268
    const v1, 0x7f0d0203

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    .line 269
    const v1, 0x7f0d0204

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    .line 270
    const v1, 0x7f0d0205

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    .line 272
    const v1, 0x7f0d00c3

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnOne:Landroid/widget/Button;

    .line 273
    const v1, 0x7f0d00c7

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnTwo:Landroid/widget/Button;

    .line 274
    const v1, 0x7f0d00cb

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnThree:Landroid/widget/Button;

    .line 275
    const v1, 0x7f0d00c4

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnFour:Landroid/widget/Button;

    .line 276
    const v1, 0x7f0d00c8

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnFive:Landroid/widget/Button;

    .line 277
    const v1, 0x7f0d00cc

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnSix:Landroid/widget/Button;

    .line 278
    const v1, 0x7f0d00c5

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnSeven:Landroid/widget/Button;

    .line 279
    const v1, 0x7f0d00c9

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnEight:Landroid/widget/Button;

    .line 280
    const v1, 0x7f0d00cd

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnNine:Landroid/widget/Button;

    .line 281
    const v1, 0x7f0d00ca

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnZero:Landroid/widget/Button;

    .line 282
    const v1, 0x7f0d0206

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnClear:Landroid/widget/Button;

    .line 283
    const v1, 0x7f0d00c2

    invoke-virtual {p0, v1}, Lcom/iot/engine/ChangePasscode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iot/engine/ChangePasscode;->btnCancel:Landroid/widget/Button;

    .line 284
    return-void

    .line 257
    :cond_0
    const-string v1, "Localhub"

    goto/16 :goto_0
.end method

.method private setPasscodeText()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f02019d

    const v3, 0x7f020187

    .line 289
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 298
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 299
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 300
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 311
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 313
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 322
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 324
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 325
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 327
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 331
    :pswitch_3
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 336
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 337
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 339
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 344
    :pswitch_4
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 350
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 351
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 352
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePasscode;->setContentView(I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/ChangePasscode;->newArrayList:Ljava/util/ArrayList;

    .line 48
    invoke-direct {p0}, Lcom/iot/engine/ChangePasscode;->initializeControls()V

    .line 51
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnOne:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$1;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnTwo:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$2;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$2;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnThree:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$3;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$3;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnFour:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$4;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$4;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnFive:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$5;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$5;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnSix:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$6;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$6;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnSeven:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$7;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$7;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnEight:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$8;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$8;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnNine:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$9;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$9;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnZero:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$10;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$10;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnClear:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$11;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$11;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/ChangePasscode$12;

    invoke-direct {v1, p0}, Lcom/iot/engine/ChangePasscode$12;-><init>(Lcom/iot/engine/ChangePasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-void
.end method
