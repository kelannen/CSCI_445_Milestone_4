.class public Lcom/kyleduo/switchbutton/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final CHECKED_ATTR:I = 0x10100a0

.field private static final ENABLE_ATTR:I = 0x101009e

.field private static final PRESSED_ATTR:I = 0x10100a7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "tintColor"    # I

    .prologue
    const/4 v9, 0x3

    const/high16 v8, -0x30000000

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    const/4 v2, 0x6

    new-array v1, v2, [[I

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v6, [I

    const v3, -0x101009e

    aput v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v7

    new-array v2, v7, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v6, [I

    const v4, -0x10100a0

    aput v4, v3, v5

    aput-object v3, v1, v2

    .line 45
    .local v1, "states":[[I
    const/4 v2, 0x6

    new-array v0, v2, [I

    const/high16 v2, -0x1f000000

    sub-int v2, p0, v2

    aput v2, v0, v5

    const/high16 v2, 0x10000000

    aput v2, v0, v6

    sub-int v2, p0, v8

    aput v2, v0, v7

    const/high16 v2, 0x20000000

    aput v2, v0, v9

    const/4 v2, 0x4

    sub-int v3, p0, v8

    aput v3, v0, v2

    const/4 v2, 0x5

    const/high16 v3, 0x20000000

    aput v3, v0, v2

    .line 53
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 36
    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data
.end method

.method public static generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "tintColor"    # I

    .prologue
    const/4 v9, 0x3

    const/high16 v8, -0x67000000

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x6

    new-array v1, v2, [[I

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v6, [I

    const v3, -0x101009e

    aput v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v7

    new-array v2, v7, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v9

    const/4 v2, 0x4

    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v6, [I

    const v4, -0x10100a0

    aput v4, v3, v5

    aput-object v3, v1, v2

    .line 24
    .local v1, "states":[[I
    const/4 v2, 0x6

    new-array v0, v2, [I

    const/high16 v2, -0x56000000

    sub-int v2, p0, v2

    aput v2, v0, v5

    const v2, -0x454546

    aput v2, v0, v6

    sub-int v2, p0, v8

    aput v2, v0, v7

    sub-int v2, p0, v8

    aput v2, v0, v9

    const/4 v2, 0x4

    const/high16 v3, -0x1000000

    or-int/2addr v3, p0

    aput v3, v0, v2

    const/4 v2, 0x5

    const v3, -0x111112

    aput v3, v0, v2

    .line 32
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 15
    nop

    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x10100a0
    .end array-data
.end method
