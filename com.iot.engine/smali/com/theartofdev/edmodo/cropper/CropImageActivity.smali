.class public Lcom/theartofdev/edmodo/cropper/CropImageActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CropImageActivity.java"

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;


# instance fields
.field private mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

.field private mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private updateMenuItemIconColor(Landroid/view/Menu;II)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemId"    # I
    .param p3, "color"    # I

    .prologue
    .line 243
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 244
    .local v0, "menuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 246
    .local v1, "menuItemIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 248
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 249
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 250
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1    # "menuItemIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v1    # "menuItemIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected cropImage()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v2, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getOutputUri()Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, "outputUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v4, v4, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v5, v5, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v6, v6, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    goto :goto_0
.end method

.method protected getOutputUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 193
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    .line 194
    .local v2, "outputUri":Landroid/net/Uri;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    :try_start_0
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v3, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v3, v4, :cond_1

    const-string v1, ".jpg"

    .line 198
    .local v1, "ext":Ljava/lang/String;
    :goto_0
    const-string v3, "cropped"

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 203
    .end local v1    # "ext":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v3, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v3, v4, :cond_2

    const-string v1, ".png"

    goto :goto_0

    :cond_2
    const-string v1, ".webp"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create temp file for output image"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "sampleSize"    # I

    .prologue
    .line 227
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 230
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 231
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 232
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;II)V

    .line 234
    .local v0, "result":Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    return-object v8
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 140
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResultCancel()V

    .line 141
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v4, Lcom/theartofdev/edmodo/cropper/R$layout;->crop_image_activity:I

    invoke-virtual {p0, v4}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setContentView(I)V

    .line 51
    sget v4, Lcom/theartofdev/edmodo/cropper/R$id;->cropImageView:I

    invoke-virtual {p0, v4}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 53
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 55
    .local v2, "source":Landroid/net/Uri;
    const-string v4, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v4, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 63
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v4, v4, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v4, v4, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v3, v4, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/String;

    .line 66
    .local v3, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    return-void

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/theartofdev/edmodo/cropper/R$string;->crop_image_activity_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/theartofdev/edmodo/cropper/R$menu;->crop_image_menu:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-boolean v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    if-nez v1, :cond_3

    .line 90
    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 91
    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_right:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 96
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 98
    .local v0, "cropIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget v1, Lcom/theartofdev/edmodo/cropper/R$drawable;->crop_image_menu_crop:I

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    if-eqz v1, :cond_2

    .line 106
    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-direct {p0, p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 107
    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_right:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-direct {p0, p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 108
    if-eqz v0, :cond_2

    .line 109
    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_crop:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-direct {p0, p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 113
    :cond_2
    return v3

    .line 92
    .end local v0    # "cropIcon":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-boolean v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    if-eqz v1, :cond_0

    .line 93
    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 102
    .restart local v0    # "cropIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onCropImageComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V
    .locals 3
    .param p1, "view"    # Lcom/theartofdev/edmodo/cropper/CropImageView;
    .param p2, "result"    # Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;

    .prologue
    .line 159
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->getSampleSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_crop:I

    if-ne v1, v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->cropImage()V

    .line 134
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    if-ne v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_right:I

    if-ne v1, v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResultCancel()V

    goto :goto_0

    .line 134
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetImageUriComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "view"    # Lcom/theartofdev/edmodo/cropper/CropImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 145
    if-nez p3, :cond_2

    .line 146
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setRotatedDegrees(I)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 75
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V

    .line 76
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 82
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V

    .line 83
    return-void
.end method

.method protected rotateImage(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->rotateImage(I)V

    .line 186
    return-void
.end method

.method protected setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "sampleSize"    # I

    .prologue
    .line 210
    if-nez p2, :cond_0

    const/4 v0, -0x1

    .line 211
    .local v0, "resultCode":I
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->finish()V

    .line 213
    return-void

    .line 210
    .end local v0    # "resultCode":I
    :cond_0
    const/16 v0, 0xcc

    goto :goto_0
.end method

.method protected setResultCancel()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(I)V

    .line 220
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->finish()V

    .line 221
    return-void
.end method
