.class public final Ldmax/dialog/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmax/dialog/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Dialog:[I

.field public static final Dialog_DialogSpotColor:I = 0x2

.field public static final Dialog_DialogSpotCount:I = 0x3

.field public static final Dialog_DialogTitleAppearance:I = 0x0

.field public static final Dialog_DialogTitleText:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldmax/dialog/R$styleable;->Dialog:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100f9
        0x7f0100fa
        0x7f0100fb
        0x7f0100fc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
