.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

.field public static final enum CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

.field public static final enum CENTER_CROP:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

.field public static final enum CENTER_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

.field public static final enum FIT_CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1505
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 1512
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 1520
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 1530
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    const-string v1, "CENTER_INSIDE"

    invoke-direct {v0, v1, v5}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 1499
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->$VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1499
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
    .locals 1

    .prologue
    .line 1499
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->$VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-object v0
.end method
