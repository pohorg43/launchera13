.class final Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/AutoFillHelper;-><init>(Landroid/content/Context;)V
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
.field public static final INSTANCE:Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;

    invoke-direct {v0}, Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;-><init>()V

    sput-object v0, Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;->INSTANCE:Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;

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

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultCNVersion()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p0

    if-nez p0, :cond_1e

    const/16 p0, 0x21

    const/16 v0, 0x1c

    if-ge p0, v0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
