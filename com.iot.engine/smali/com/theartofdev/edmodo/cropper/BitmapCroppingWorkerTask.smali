.class final Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapCroppingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAspectRatioX:I

.field private final mAspectRatioY:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mCropImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/theartofdev/edmodo/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropPoints:[F

.field private final mDegreesRotated:I

.field private final mFixAspectRatio:Z

.field private final mOrgHeight:I

.field private final mOrgWidth:I

.field private final mReqHeight:I

.field private final mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field private final mReqWidth:I

.field private final mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mSaveCompressQuality:I

.field private final mSaveUri:Landroid/net/Uri;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 2
    .param p1, "cropImageView"    # Lcom/theartofdev/edmodo/cropper/CropImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "cropPoints"    # [F
    .param p4, "degreesRotated"    # I
    .param p5, "fixAspectRatio"    # Z
    .param p6, "aspectRatioX"    # I
    .param p7, "aspectRatioY"    # I
    .param p8, "reqWidth"    # I
    .param p9, "reqHeight"    # I
    .param p10, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;
    .param p11, "saveUri"    # Landroid/net/Uri;
    .param p12, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p13, "saveCompressQuality"    # I

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 121
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 123
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    .line 125
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    .line 126
    iput-boolean p5, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    .line 127
    iput p6, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    .line 128
    iput p7, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    .line 129
    iput p8, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    .line 130
    iput p9, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    .line 131
    iput-object p10, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 132
    iput-object p11, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    .line 133
    iput-object p12, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 134
    iput p13, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    .line 135
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    .line 136
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 2
    .param p1, "cropImageView"    # Lcom/theartofdev/edmodo/cropper/CropImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cropPoints"    # [F
    .param p4, "degreesRotated"    # I
    .param p5, "orgWidth"    # I
    .param p6, "orgHeight"    # I
    .param p7, "fixAspectRatio"    # Z
    .param p8, "aspectRatioX"    # I
    .param p9, "aspectRatioY"    # I
    .param p10, "reqWidth"    # I
    .param p11, "reqHeight"    # I
    .param p12, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;
    .param p13, "saveUri"    # Landroid/net/Uri;
    .param p14, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p15, "saveCompressQuality"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 146
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    .line 148
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    .line 149
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    .line 150
    iput-boolean p7, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    .line 151
    iput p8, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    .line 152
    iput p9, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    .line 153
    iput p5, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    .line 154
    iput p6, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    .line 155
    iput p10, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    .line 156
    iput p11, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    .line 157
    iput-object p12, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 158
    iput-object p13, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    .line 159
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 160
    move/from16 v0, p15

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 162
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    const/4 v11, 0x0

    .line 183
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x1

    .line 184
    .local v14, "sampleSize":I
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    iget v9, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    iget v10, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    .line 186
    invoke-static/range {v0 .. v10}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIII)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v12

    .line 188
    .local v12, "bitmapSampled":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    iget-object v11, v12, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    .line 189
    iget v14, v12, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    .line 194
    .end local v12    # "bitmapSampled":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    :cond_0
    :goto_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-static {v11, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 196
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    invoke-direct {v0, v11, v14}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/graphics/Bitmap;I)V

    .line 208
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "sampleSize":I
    :goto_1
    return-object v0

    .line 190
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "sampleSize":I
    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;[FIZII)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    invoke-static {v0, v11, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 200
    if-eqz v11, :cond_3

    .line 201
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_3
    new-instance v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v14}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "sampleSize":I
    :catch_0
    move-exception v13

    .line 208
    .local v13, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-direct {v1, v13, v0}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;-><init>(Ljava/lang/Exception;Z)V

    move-object v0, v1

    goto :goto_1

    .line 206
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 208
    .restart local v13    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    .prologue
    .line 219
    if-eqz p1, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "completeCalled":Z
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 223
    .local v1, "cropImageView":Lcom/theartofdev/edmodo/cropper/CropImageView;
    if-eqz v1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 225
    invoke-virtual {v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->onImageCroppingAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V

    .line 228
    .end local v1    # "cropImageView":Lcom/theartofdev/edmodo/cropper/CropImageView;
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    .end local v0    # "completeCalled":Z
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V

    return-void
.end method
