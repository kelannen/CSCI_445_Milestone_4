.class Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kyleduo/switchbutton/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kyleduo/switchbutton/SwitchButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field offText:Ljava/lang/CharSequence;

.field onText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 937
    new-instance v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState$1;

    invoke-direct {v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 925
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 926
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    .line 927
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    .line 928
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kyleduo/switchbutton/SwitchButton$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/kyleduo/switchbutton/SwitchButton$1;

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 921
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 922
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 932
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 933
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 934
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 935
    return-void
.end method
