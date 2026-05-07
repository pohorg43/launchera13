.class final Lcom/android/common/config/FeatureOption$isSupportSimpleModeLauncher$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/config/FeatureOption;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/config/FeatureOption$isSupportSimpleModeLauncher$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/config/FeatureOption$isSupportSimpleModeLauncher$2;

    invoke-direct {v0}, Lcom/android/common/config/FeatureOption$isSupportSimpleModeLauncher$2;-><init>()V

    sput-object v0, Lcom/android/common/config/FeatureOption$isSupportSimpleModeLauncher$2;->INSTANCE:Lcom/android/common/config/FeatureOption$isSupportSimpleModeLauncher$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .registers 2

    sget-object p0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-static {p0}, Lcom/android/common/config/FeatureOption;->access$getPackageManager(Lcom/android/common/config/FeatureOption;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v0, "oplus.launcher.simple_mode.disable"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-nez p0, :cond_1f

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result p0

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/config/FeatureOption$isSupportSimpleModeLauncher$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
