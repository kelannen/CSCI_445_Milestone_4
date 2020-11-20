.class public Lcom/iot/engine/EditSwitchOperation;
.super Landroid/app/Activity;
.source "EditSwitchOperation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;
    }
.end annotation


# instance fields
.field private btnUpdate:Landroid/widget/Button;

.field dataAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private edtSwitchName:Landroid/widget/EditText;

.field private imgBack:Landroid/widget/ImageView;

.field private mSwitchID:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field private selectionFlag:Z

.field sessionManager:LSession/SessionManager;

.field private spnRoomType:Landroid/widget/Spinner;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private switchImageID:Ljava/lang/String;

.field switchList:[Ljava/lang/String;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v2, p0, Lcom/iot/engine/EditSwitchOperation;->selectionFlag:Z

    .line 56
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bulb"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "AC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Chandelier"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Cooler"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Desk Lamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Desktop"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DISH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Exhaust"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fan"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Refrigerator"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Microwave"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Mixer"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Purifier"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Socket"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Sound System"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Stove"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Table Fan"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TV"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Tube"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Washing Machine"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Water Heater"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CD Player"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Iron Machine"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Coffee Maker"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Curtain"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Lock"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Sprinkler"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->switchList:[Ljava/lang/String;

    return-void
.end method

.method private OnclickOfEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->edtSwitchName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "mSwitchName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "Kindly enter switch name"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 135
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DemoUser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "db":LDatabase/DatabaseHandler;
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->mSwitchID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LDatabase/DatabaseHandler;->updateSwitchRoomName(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->mSwitchID:Ljava/lang/String;

    iget-object v3, p0, Lcom/iot/engine/EditSwitchOperation;->switchImageID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, LDatabase/DatabaseHandler;->updateSwitchImageId(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->mSwitchID:Ljava/lang/String;

    iget-object v3, p0, Lcom/iot/engine/EditSwitchOperation;->switchImageID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, LDatabase/DatabaseHandler;->updateRecntSwitchImageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "Edit successfully."

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 125
    invoke-virtual {p0}, Lcom/iot/engine/EditSwitchOperation;->finish()V

    goto :goto_0

    .line 128
    .end local v0    # "db":LDatabase/DatabaseHandler;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;-><init>(Lcom/iot/engine/EditSwitchOperation;Lcom/iot/engine/EditSwitchOperation$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 132
    :cond_2
    const-string v2, "Kindly check internet connection."

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/iot/engine/EditSwitchOperation;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/EditSwitchOperation;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/EditSwitchOperation;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/EditSwitchOperation;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iot/engine/EditSwitchOperation;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/EditSwitchOperation;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->mSwitchID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/EditSwitchOperation;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->switchImageID:Ljava/lang/String;

    return-object v0
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0d0134

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditSwitchOperation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->edtSwitchName:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0d0135

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditSwitchOperation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->btnUpdate:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditSwitchOperation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->imgBack:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditSwitchOperation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->txtHeading:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0d00ba

    invoke-virtual {p0, v0}, Lcom/iot/engine/EditSwitchOperation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->spnRoomType:Landroid/widget/Spinner;

    .line 88
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->spnRoomType:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->sessionManager:LSession/SessionManager;

    .line 93
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Edit Switch"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 101
    :sswitch_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/iot/engine/EditSwitchOperation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 102
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/EditSwitchOperation;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 103
    invoke-direct {p0}, Lcom/iot/engine/EditSwitchOperation;->OnclickOfEdit()V

    goto :goto_0

    .line 107
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/EditSwitchOperation;->finish()V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x7f0d0135 -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f040050

    invoke-virtual {p0, v2}, Lcom/iot/engine/EditSwitchOperation;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/iot/engine/EditSwitchOperation;->initComponent()V

    .line 66
    invoke-virtual {p0}, Lcom/iot/engine/EditSwitchOperation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SwitchInfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 67
    .local v0, "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "SwitchID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->mSwitchID:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/iot/engine/EditSwitchOperation;->edtSwitchName:Landroid/widget/EditText;

    const-string v2, "SwitchName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->switchList:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "switchListL":Ljava/util/List;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0400b3

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->dataAdapter:Landroid/widget/ArrayAdapter;

    .line 72
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->spnRoomType:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/iot/engine/EditSwitchOperation;->dataAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation;->dataAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/iot/engine/EditSwitchOperation;->spnRoomType:Landroid/widget/Spinner;

    const-string v2, "switch_image_id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->switchImageID:Ljava/lang/String;

    .line 141
    iget-boolean v0, p0, Lcom/iot/engine/EditSwitchOperation;->selectionFlag:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation;->edtSwitchName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iot/engine/EditSwitchOperation;->spnRoomType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iot/engine/EditSwitchOperation;->selectionFlag:Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
