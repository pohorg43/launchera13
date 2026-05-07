.class public final Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;
    .registers 1

    invoke-static {}, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;->access$getInstance$cp()Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;

    move-result-object p0

    return-object p0
.end method
