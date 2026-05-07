.class public final Lcom/android/launcher/backup/util/DatabaseLoaderCursor$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/util/DatabaseLoaderCursor;
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

    invoke-direct {p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getITEM_PROJECTION()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->access$getITEM_PROJECTION$cp()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSCREEN_PROJECTION()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->access$getSCREEN_PROJECTION$cp()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
