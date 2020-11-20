.class public final Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
.super Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;
.source "CropImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 816
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult$1;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult$1;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;II)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "error"    # Ljava/lang/Exception;
    .param p4, "cropPoints"    # [F
    .param p5, "cropRect"    # Landroid/graphics/Rect;
    .param p6, "rotation"    # I
    .param p7, "sampleSize"    # I

    .prologue
    .line 829
    invoke-direct/range {p0 .. p7}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;II)V

    .line 830
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 833
    const/4 v1, 0x0

    const-class v0, Landroid/net/Uri;

    .line 834
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    const-class v0, Landroid/graphics/Rect;

    .line 837
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    .line 833
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;II)V

    .line 839
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 844
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 845
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getCropPoints()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 846
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 847
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getRotation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getSampleSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    return-void
.end method
