.class public final Lcom/theartofdev/edmodo/cropper/CropImage;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;,
        Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    }
.end annotation


# static fields
.field public static final CAMERA_CAPTURE_PERMISSIONS_REQUEST_CODE:I = 0x7db

.field public static final CROP_IMAGE_ACTIVITY_REQUEST_CODE:I = 0xcb

.field public static final CROP_IMAGE_ACTIVITY_RESULT_ERROR_CODE:I = 0xcc

.field public static final CROP_IMAGE_EXTRA_OPTIONS:Ljava/lang/String; = "CROP_IMAGE_EXTRA_OPTIONS"

.field public static final CROP_IMAGE_EXTRA_RESULT:Ljava/lang/String; = "CROP_IMAGE_EXTRA_RESULT"

.field public static final CROP_IMAGE_EXTRA_SOURCE:Ljava/lang/String; = "CROP_IMAGE_EXTRA_SOURCE"

.field public static final PICK_IMAGE_CHOOSER_REQUEST_CODE:I = 0xc8

.field public static final PICK_IMAGE_PERMISSIONS_REQUEST_CODE:I = 0xc9


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static activity(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 357
    if-eqz p0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must be non null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;-><init>(Landroid/net/Uri;Lcom/theartofdev/edmodo/cropper/CropImage$1;)V

    return-object v0
.end method

.method public static getActivityResult(Landroid/content/Intent;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 370
    if-eqz p0, :cond_0

    const-string v0, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCameraIntents(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "allIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->getCaptureImageOutputUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    .local v4, "outputFileUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "captureIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 206
    .local v3, "listCam":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 207
    .local v5, "res":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    if-eqz v4, :cond_0

    .line 211
    const-string v7, "output"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "res":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method public static getCaptureImageOutputUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "outputFileUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 292
    .local v0, "getImage":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 293
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pickImageResult.jpeg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 295
    :cond_0
    return-object v1
.end method

.method public static getGalleryIntents(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "includeDocuments"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const-string v5, "android.intent.action.GET_CONTENT"

    if-ne p1, v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "galleryIntent":Landroid/content/Intent;
    :goto_0
    const-string v5, "image/*"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 228
    .local v3, "listGallery":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 229
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "listGallery":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "res":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 236
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    .restart local v3    # "listGallery":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    if-nez p2, :cond_3

    .line 237
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 238
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.documentsui.DocumentsActivity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-object v2
.end method

.method public static getPickImageChooserIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    sget v0, Lcom/theartofdev/edmodo/cropper/R$string;->pick_image_intent_chooser_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImage;->getPickImageChooserIntent(Landroid/content/Context;Ljava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPickImageChooserIntent(Landroid/content/Context;Ljava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "includeDocuments"    # Z

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "allIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 168
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p0, v3}, Lcom/theartofdev/edmodo/cropper/CropImage;->getCameraIntents(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-static {v3, v5, p2}, Lcom/theartofdev/edmodo/cropper/CropImage;->getGalleryIntents(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "galleryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 173
    const-string v5, "android.intent.action.PICK"

    invoke-static {v3, v5, p2}, Lcom/theartofdev/edmodo/cropper/CropImage;->getGalleryIntents(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 175
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 179
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v4, "target":Landroid/content/Intent;
    :goto_0
    invoke-static {v4, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.INITIAL_INTENTS"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    return-object v1

    .line 181
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    .end local v4    # "target":Landroid/content/Intent;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 182
    .restart local v4    # "target":Landroid/content/Intent;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getPickImageResultUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 306
    const/4 v1, 0x1

    .line 307
    .local v1, "isCamera":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 311
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->getCaptureImageOutputUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    return-object v2

    .line 309
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method public static hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissionName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 271
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 272
    .local v0, "declaredPermisisons":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 273
    array-length v6, v0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 274
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 275
    const/4 v4, 0x1

    .line 281
    .end local v0    # "declaredPermisisons":[Ljava/lang/String;
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return v4

    .line 273
    .restart local v0    # "declaredPermisisons":[Ljava/lang/String;
    .restart local v1    # "p":Ljava/lang/String;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "declaredPermisisons":[Ljava/lang/String;
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static isExplicitCameraPermissionRequired(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 255
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Lcom/theartofdev/edmodo/cropper/CropImage;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.CAMERA"

    .line 256
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 258
    :cond_0
    return v0
.end method

.method public static isReadExternalStoragePermissionsRequired(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage;->isUriRequiresPermissions(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriRequiresPermissions(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 339
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 340
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 341
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    const/4 v3, 0x0

    .line 344
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_0
    return v3

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static startPickImageActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->getPickImageChooserIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void
.end method

.method public static toOvalBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 108
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 109
    .local v2, "height":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 111
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 114
    .local v1, "color":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 116
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 118
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v7, v6

    int-to-float v8, v2

    invoke-direct {v5, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 121
    .local v5, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 122
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    invoke-virtual {v0, p0, v9, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    return-object v3
.end method
