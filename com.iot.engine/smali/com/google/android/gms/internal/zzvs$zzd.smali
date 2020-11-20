.class Lcom/google/android/gms/internal/zzvs$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final atL:Lcom/google/android/gms/search/GoogleNowAuthState;

.field private final bY:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvs$zzd;->bY:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvs$zzd;->atL:Lcom/google/android/gms/search/GoogleNowAuthState;

    return-void
.end method


# virtual methods
.method public getGoogleNowAuthState()Lcom/google/android/gms/search/GoogleNowAuthState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs$zzd;->atL:Lcom/google/android/gms/search/GoogleNowAuthState;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs$zzd;->bY:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
