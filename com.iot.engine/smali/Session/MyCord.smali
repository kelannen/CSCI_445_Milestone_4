.class public LSession/MyCord;
.super Ljava/lang/Object;
.source "MyCord.java"


# instance fields
.field private X:I

.field private Y:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, LSession/MyCord;-><init>(II)V

    .line 14
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, LSession/MyCord;->X:I

    .line 17
    iput p2, p0, LSession/MyCord;->Y:I

    .line 18
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, LSession/MyCord;->X:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LSession/MyCord;->Y:I

    return v0
.end method

.method public setX(I)V
    .locals 0
    .param p1, "X"    # I

    .prologue
    .line 26
    iput p1, p0, LSession/MyCord;->X:I

    .line 27
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "Y"    # I

    .prologue
    .line 29
    iput p1, p0, LSession/MyCord;->Y:I

    .line 30
    return-void
.end method
