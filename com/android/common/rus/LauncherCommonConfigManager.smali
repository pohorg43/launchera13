.class public final Lcom/android/common/rus/LauncherCommonConfigManager;
.super Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/rus/LauncherCommonConfigManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/common/rus/LauncherCommonConfigManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    sget-object v0, Lcom/android/common/rus/LauncherCommonConfigManager$Companion$sInstance$2;->INSTANCE:Lcom/android/common/rus/LauncherCommonConfigManager$Companion$sInstance$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/common/rus/LauncherCommonConfigManager;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/common/rus/LauncherCommonConfigManager;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {v0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocalFileConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_launcher_common_rus_list"

    return-object p0
.end method

.method public getRusRomConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_launcher_common_rus_list"

    return-object p0
.end method

.method public supportRus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
