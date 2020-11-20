.class public final Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/UsageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private bA:I

.field private bu:Lcom/google/android/gms/appdatasearch/DocumentId;

.field private bv:J

.field private bw:I

.field private bx:Lcom/google/android/gms/appdatasearch/DocumentContents;

.field private by:Z

.field private bz:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bv:J

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bw:I

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bz:I

    iput-boolean v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->by:Z

    iput v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bA:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bx:Lcom/google/android/gms/appdatasearch/DocumentContents;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bu:Lcom/google/android/gms/appdatasearch/DocumentId;

    return-object p0
.end method

.method public zzaer()Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 11

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/appdatasearch/UsageInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bu:Lcom/google/android/gms/appdatasearch/DocumentId;

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bv:J

    iget v4, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bw:I

    iget-object v6, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bx:Lcom/google/android/gms/appdatasearch/DocumentContents;

    iget-boolean v7, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->by:Z

    iget v8, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bz:I

    iget v9, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bA:I

    move-object v10, v5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZIILcom/google/android/gms/appdatasearch/UsageInfo$1;)V

    return-object v0
.end method

.method public zzax(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->by:Z

    return-object p0
.end method

.method public zzch(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bw:I

    return-object p0
.end method

.method public zzci(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bA:I

    return-object p0
.end method

.method public zzy(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->bv:J

    return-object p0
.end method
