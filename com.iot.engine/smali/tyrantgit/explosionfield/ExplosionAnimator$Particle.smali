.class Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
.super Ljava/lang/Object;
.source "ExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltyrantgit/explosionfield/ExplosionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field baseCx:F

.field baseCy:F

.field baseRadius:F

.field bottom:F

.field color:I

.field cx:F

.field cy:F

.field life:F

.field mag:F

.field neg:F

.field overflow:F

.field radius:F

.field final synthetic this$0:Ltyrantgit/explosionfield/ExplosionAnimator;

.field top:F


# direct methods
.method private constructor <init>(Ltyrantgit/explosionfield/ExplosionAnimator;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->this$0:Ltyrantgit/explosionfield/ExplosionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltyrantgit/explosionfield/ExplosionAnimator;Ltyrantgit/explosionfield/ExplosionAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Ltyrantgit/explosionfield/ExplosionAnimator;
    .param p2, "x1"    # Ltyrantgit/explosionfield/ExplosionAnimator$1;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;-><init>(Ltyrantgit/explosionfield/ExplosionAnimator;)V

    return-void
.end method


# virtual methods
.method public advance(F)V
    .locals 12
    .param p1, "factor"    # F

    .prologue
    const v8, 0x3fb33333    # 1.4f

    const v7, 0x3f333333    # 0.7f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "f":F
    div-float v2, p1, v8

    .line 134
    .local v2, "normalization":F
    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->life:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->overflow:F

    sub-float v3, v6, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 135
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->life:F

    sub-float v3, v2, v3

    iget v4, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->life:F

    sub-float v4, v6, v4

    iget v5, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->overflow:F

    sub-float/2addr v4, v5

    div-float v2, v3, v4

    .line 139
    mul-float v1, v2, v8

    .line 140
    .local v1, "f2":F
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_2

    .line 141
    sub-float v3, v2, v7

    const v4, 0x3e99999a    # 0.3f

    div-float v0, v3, v4

    .line 143
    :cond_2
    sub-float v3, v6, v0

    iput v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    .line 144
    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    mul-float v0, v3, v1

    .line 145
    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCx:F

    add-float/2addr v3, v0

    iput v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cx:F

    .line 146
    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCy:F

    float-to-double v4, v3

    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->neg:F

    float-to-double v6, v3

    float-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v3, v4

    iget v4, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->mag:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cy:F

    .line 147
    invoke-static {}, Ltyrantgit/explosionfield/ExplosionAnimator;->access$100()F

    move-result v3

    iget v4, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    invoke-static {}, Ltyrantgit/explosionfield/ExplosionAnimator;->access$100()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->radius:F

    goto :goto_0
.end method
