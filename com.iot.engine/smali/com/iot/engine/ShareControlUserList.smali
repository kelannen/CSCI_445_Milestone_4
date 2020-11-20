.class public Lcom/iot/engine/ShareControlUserList;
.super Landroid/app/Activity;
.source "ShareControlUserList.java"

# interfaces
.implements LSession/IOnClickListner;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;
    }
.end annotation


# instance fields
.field adapter:LAdapter/ShareControlAdapter;

.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field email:Ljava/lang/String;

.field id:Ljava/lang/String;

.field image:Ljava/lang/String;

.field private imgAddUser:Landroid/widget/ImageView;

.field private imgBack:Landroid/widget/ImageView;

.field phoneNumber:Ljava/lang/String;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;

.field userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/ShareControlUserList;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ShareControlUserList;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/ShareControlUserList;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ShareControlUserList;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iot/engine/ShareControlUserList;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iot/engine/ShareControlUserList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ShareControlUserList;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iot/engine/ShareControlUserList;->createJSONBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/ShareControlUserList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ShareControlUserList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/iot/engine/ShareControlUserList;->parseResult(Ljava/lang/String;)V

    return-void
.end method

.method private callWebServiceUserList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;-><init>(Lcom/iot/engine/ShareControlUserList;Lcom/iot/engine/ShareControlUserList$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, "Kindly check internet Connection..!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private createJSONBody()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v0, "jMain":Lorg/json/JSONObject;
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, "manager":LSession/SessionManager;
    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "userID":Ljava/lang/String;
    :try_start_0
    const-string v3, "userId"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 263
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initComponent()V
    .locals 3

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iot/engine/ShareControlUserList;->arrayList:Ljava/util/ArrayList;

    .line 97
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/iot/engine/ShareControlUserList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/iot/engine/ShareControlUserList;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 98
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/ShareControlUserList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/ShareControlUserList;->imgBack:Landroid/widget/ImageView;

    .line 99
    const v1, 0x7f0d026e

    invoke-virtual {p0, v1}, Lcom/iot/engine/ShareControlUserList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/ShareControlUserList;->imgAddUser:Landroid/widget/ImageView;

    .line 100
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/ShareControlUserList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/ShareControlUserList;->txtHeading:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/iot/engine/ShareControlUserList;->txtHeading:Landroid/widget/TextView;

    const-string v2, "User List"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/iot/engine/ShareControlUserList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/iot/engine/ShareControlUserList;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 104
    iget-object v1, p0, Lcom/iot/engine/ShareControlUserList;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/iot/engine/ShareControlUserList;->imgAddUser:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private parseResult(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 198
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    .local v6, "response":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SUCCESS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 201
    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "mResult":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "jsnarray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 206
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 208
    .local v2, "jsnobject":Lorg/json/JSONObject;
    const-string v7, "userType"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "mUserType":Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/iot/engine/ShareControlUserList;->sessionManager:LSession/SessionManager;

    invoke-virtual {v8}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    iget-object v7, p0, Lcom/iot/engine/ShareControlUserList;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7, v5}, LSession/SessionManager;->setUserType(Ljava/lang/String;)V

    .line 214
    :cond_0
    const-string v7, "email"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/iot/engine/ShareControlUserList;->email:Ljava/lang/String;

    .line 215
    const-string v7, "phoneNumber"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/iot/engine/ShareControlUserList;->phoneNumber:Ljava/lang/String;

    .line 217
    const-string v7, "image"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 218
    const-string v7, "image"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_1
    const-string v7, "id"

    const-string v8, "id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v7, "userName"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "firstName"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lastName"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 227
    const-string v5, "Admin"

    .line 236
    :cond_1
    :goto_2
    const-string v7, "userType"

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v7, "realUserType"

    const-string v8, "userType"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v7, "email"

    const-string v8, "email"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v7, "phoneNumber"

    const-string v8, "phoneNumber"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v7, p0, Lcom/iot/engine/ShareControlUserList;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 220
    :cond_2
    const-string v7, "image"

    const-string v8, "image"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 253
    .end local v0    # "i":I
    .end local v1    # "jsnarray":Lorg/json/JSONArray;
    .end local v2    # "jsnobject":Lorg/json/JSONObject;
    .end local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "mResult":Ljava/lang/String;
    .end local v5    # "mUserType":Ljava/lang/String;
    .end local v6    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 254
    :goto_3
    return-void

    .line 228
    .restart local v0    # "i":I
    .restart local v1    # "jsnarray":Lorg/json/JSONArray;
    .restart local v2    # "jsnobject":Lorg/json/JSONObject;
    .restart local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "mResult":Ljava/lang/String;
    .restart local v5    # "mUserType":Ljava/lang/String;
    .restart local v6    # "response":Lorg/json/JSONObject;
    :cond_3
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 229
    const-string v5, "Moderate User"

    goto :goto_2

    .line 230
    :cond_4
    const-string v7, "2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 231
    const-string v5, "Normal User"

    goto :goto_2

    .line 232
    :cond_5
    const-string v7, "3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 233
    const-string v5, "Guest User"

    goto :goto_2

    .line 245
    .end local v2    # "jsnobject":Lorg/json/JSONObject;
    .end local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "mUserType":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/iot/engine/ShareControlUserList;->setAdpater()V

    goto :goto_3

    .line 249
    .end local v0    # "i":I
    .end local v1    # "jsnarray":Lorg/json/JSONArray;
    .end local v4    # "mResult":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/iot/engine/ShareControlUserList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060082

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method private prepareUserList()V
    .locals 4

    .prologue
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iot/engine/ShareControlUserList;->arrayList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ID"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "userName"

    const-string v3, "Ganesh"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "email"

    const-string v3, "ganesh@gsmarthome.com"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "image"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "userType"

    const-string v3, "Admin"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/iot/engine/ShareControlUserList;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v1, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ID"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "userName"

    const-string v3, "Harish"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "email"

    const-string v3, "harish@gsmarthome.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "image"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "userType"

    const-string v3, "Normal User"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, p0, Lcom/iot/engine/ShareControlUserList;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 132
    :sswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/ShareControlUserList;->finish()V

    goto :goto_0

    .line 136
    :sswitch_1
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "session":LSession/SessionManager;
    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/iot/engine/ShareControl;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControlUserList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/iot/engine/ShareControlUserList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/iot/engine/ShareControl;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControlUserList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0156 -> :sswitch_0
        0x7f0d026e -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickListner(Ljava/util/HashMap;)V
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
    .line 122
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/EditShareControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "UserInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControlUserList;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/iot/engine/ShareControlUserList;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/iot/engine/ShareControlUserList;->initComponent()V

    .line 52
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/ShareControlUserList;->sessionManager:LSession/SessionManager;

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/iot/engine/ShareControlUserList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 286
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x7f0d0284
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/iot/engine/ShareControlUserList;->prepareUserList()V

    .line 62
    invoke-virtual {p0}, Lcom/iot/engine/ShareControlUserList;->setAdpater()V

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/iot/engine/ShareControlUserList;->callWebServiceUserList()V

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "Kindly check internet connection "

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setAdpater()V
    .locals 4

    .prologue
    .line 268
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, "manager":LSession/SessionManager;
    new-instance v1, LAdapter/ShareControlAdapter;

    iget-object v2, p0, Lcom/iot/engine/ShareControlUserList;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, LAdapter/ShareControlAdapter;-><init>(Lcom/iot/engine/ShareControlUserList;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iot/engine/ShareControlUserList;->adapter:LAdapter/ShareControlAdapter;

    .line 270
    iget-object v1, p0, Lcom/iot/engine/ShareControlUserList;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/iot/engine/ShareControlUserList;->adapter:LAdapter/ShareControlAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 271
    iget-object v1, p0, Lcom/iot/engine/ShareControlUserList;->adapter:LAdapter/ShareControlAdapter;

    invoke-virtual {v1}, LAdapter/ShareControlAdapter;->notifyDataSetChanged()V

    .line 273
    return-void
.end method
