.class public final Lcom/android/launcher3/widget/WidgetControlConfigManager;
.super Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher3/widget/WidgetControlConfigManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetControlConfigManager;->Companion:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

    sget-object v0, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion$sInstance$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/widget/WidgetControlConfigManager;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/WidgetControlConfigManager;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/widget/WidgetControlConfigManager;->Companion:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocalFileConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_nebula_fwk_widget_wl"

    return-object p0
.end method

.method public getRusRomConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_nebula_fwk_widget_wl"

    return-object p0
.end method

.method public supportRus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
