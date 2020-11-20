.class public LSession/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field public static final MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE:I = 0x7b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .local v2, "currentAPIVersion":I
    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    .line 34
    invoke-static {p0}, LSession/Utility;->isCheckPermission(Landroid/content/Context;)Z

    move-result v3

    .line 35
    .local v3, "flags":Z
    invoke-static {p0}, LSession/Utility;->isCheckPermission(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, p0

    .line 36
    check-cast v4, Landroid/app/Activity;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v4, v7}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "alertBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39
    const-string v4, "Permission necessary"

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40
    const-string v4, "External storage permission is necessary"

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 41
    const v4, 0x1040013

    new-instance v6, LSession/Utility$1;

    invoke-direct {v6, p0}, LSession/Utility$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 50
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .end local v0    # "alert":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "alertBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    move v4, v5

    .line 61
    .end local v3    # "flags":Z
    :goto_1
    return v4

    .line 54
    .restart local v3    # "flags":Z
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v7, v4, v5

    const-string v7, "android.permission.CAMERA"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "android.permission.CALL_PHONE"

    aput-object v7, v4, v6

    const/16 v6, 0x7b

    invoke-static {p0, v4, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    move v4, v6

    .line 58
    goto :goto_1

    .end local v3    # "flags":Z
    :cond_2
    move v4, v6

    .line 61
    goto :goto_1
.end method

.method private static isCheckPermission(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "result":I
    const-string v2, "android.permission.CAMERA"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "result1":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestPermission(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "imgUrl"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x64

    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04003a

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "layout":Landroid/view/View;
    const v5, 0x7f0d0101

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    .local v0, "image":Landroid/widget/ImageView;
    const-string v5, "Physically switch"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    const v5, 0x7f02016c

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    :goto_0
    const v5, 0x7f0d0102

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    .local v3, "textV":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 97
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v5, 0x50

    const/16 v6, 0xa

    const/16 v7, 0x14

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 98
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 99
    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 101
    return-void

    .line 89
    .end local v3    # "textV":Landroid/widget/TextView;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://s3-us-west-2.amazonaws.com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f020175

    .line 90
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
