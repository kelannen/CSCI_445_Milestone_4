.class Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
.super Landroid/view/View$BaseSavedState;
.source "DiscreteSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max:I

.field private min:I

.field private progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1058
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState$1;

    invoke-direct {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState$1;-><init>()V

    sput-object v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    .line 1044
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1048
    return-void
.end method

.method static synthetic access$300(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    .prologue
    .line 1034
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    return v0
.end method

.method static synthetic access$302(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
    .param p1, "x1"    # I

    .prologue
    .line 1034
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    return p1
.end method

.method static synthetic access$400(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    .prologue
    .line 1034
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    return v0
.end method

.method static synthetic access$402(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
    .param p1, "x1"    # I

    .prologue
    .line 1034
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    return p1
.end method

.method static synthetic access$500(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    .prologue
    .line 1034
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    return v0
.end method

.method static synthetic access$502(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
    .param p1, "x1"    # I

    .prologue
    .line 1034
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "outcoming"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1052
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1053
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    return-void
.end method
