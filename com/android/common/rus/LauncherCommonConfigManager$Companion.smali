.class public final Lcom/android/common/rus/LauncherCommonConfigManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/rus/LauncherCommonConfigManager;
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

    invoke-direct {p0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;-><init>()V

    return-void
.end method

.method private final getSInstance()Lcom/android/common/rus/LauncherCommonConfigManager;
    .registers 1

    invoke-static {}, Lcom/android/common/rus/LauncherCommonConfigManager;->access$getSInstance$delegate$cp()Ly2/e;

    move-result-object p0

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/rus/LauncherCommonConfigManager;

    return-object p0
.end method


# virtual methods
.method public final getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-direct {p0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getSInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object p0

    return-object p0
.end method
