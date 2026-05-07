.class public Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/view/WindowManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParamsNative"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static DEFAULT_STATUS_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static DISABLE_STATUS_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static ENABLE_STATUS_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static IGNORE_HOME_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static IGNORE_HOME_MENU_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static IGNORE_MENU_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static SYSTEM_FLAG_SHOW_FOR_ALL_USERS:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_ACCESSIBILITY_OVERLAY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_APPLICATION_OVERLAY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_DISPLAY_OVERLAY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_DRAG:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_KEYGUARD:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_KEYGUARD_DIALOG:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_MAGNIFICATION_OVERLAY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_NAVIGATION_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_NAVIGATION_BAR_PANEL:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_SCREENSHOT:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_SECURE_SYSTEM_OVERLAY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_STATUS_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_STATUS_BAR_PANEL:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_STATUS_BAR_SUB_PANEL:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static TYPE_VOLUME_OVERLAY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static UNSET_ANY_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->access$300()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->access$400()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->access$500()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_KEY:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->access$600()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_MENU_KEY:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->access$700()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->DEFAULT_STATUS_BAR:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->access$800()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->DISABLE_STATUS_BAR:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative;->access$900()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->ENABLE_STATUS_BAR:I

    const/16 v0, 0x7e4

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_VOLUME_OVERLAY:I

    const/16 v0, 0x10

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->SYSTEM_FLAG_SHOW_FOR_ALL_USERS:I

    const/16 v0, 0x7e8

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_NAVIGATION_BAR_PANEL:I

    const/16 v0, 0x7e3

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_NAVIGATION_BAR:I

    const/16 v0, 0x7f0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_ACCESSIBILITY_OVERLAY:I

    const/16 v0, 0x7f7

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY:I

    const/16 v0, 0x7ea

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_DISPLAY_OVERLAY:I

    const/16 v0, 0x7e0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_DRAG:I

    const/16 v0, 0x7d4

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_KEYGUARD:I

    const/16 v0, 0x7d9

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_KEYGUARD_DIALOG:I

    const/16 v0, 0x7eb

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_MAGNIFICATION_OVERLAY:I

    const/16 v0, 0x7f4

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_SCREENSHOT:I

    const/16 v0, 0x7df

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_SECURE_SYSTEM_OVERLAY:I

    const/16 v0, 0x7d0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_STATUS_BAR:I

    const/16 v0, 0x7de

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_STATUS_BAR_PANEL:I

    const/16 v0, 0x7e1

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_STATUS_BAR_SUB_PANEL:I

    const/16 v0, 0x7f6

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->TYPE_APPLICATION_OVERLAY:I

    goto/16 :goto_12e

    :cond_a0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ed

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1000()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1100()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1200()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_KEY:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1300()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_MENU_KEY:I

    :cond_ed
    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1400()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->DEFAULT_STATUS_BAR:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1500()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->DISABLE_STATUS_BAR:I

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1600()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->ENABLE_STATUS_BAR:I

    goto :goto_12e

    :cond_11e
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_124
    .catchall {:try_start_0 .. :try_end_124} :catchall_124

    :catchall_124
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrivateFlag(Landroid/view/WindowManager$LayoutParams;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_d

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_d
    return-void

    :cond_e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before N"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_36

    :try_start_6
    const-class v0, Landroid/view/OplusBaseLayoutParams;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/OplusBaseLayoutParams;

    if-eqz p0, :cond_13

    iget p0, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_12} :catch_15

    return p0

    :cond_13
    const/4 p0, -0x1

    return p0

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "no permission to access the blocked field:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p0}, Lcom/oplus/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0

    :cond_41
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p0}, Lcom/oplus/compat/view/WindowManagerNative;->access$2000(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_52
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$2100()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_67
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before N"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPrivateFlag(Landroid/view/WindowManager$LayoutParams;)I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return p0

    :cond_9
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before N"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_36

    :try_start_6
    const-class v0, Landroid/view/OplusBaseLayoutParams;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/OplusBaseLayoutParams;

    if-eqz p0, :cond_13

    iget p0, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_12} :catch_15

    return p0

    :cond_13
    const/4 p0, -0x1

    return p0

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "no permission to access the blocked field:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p0}, Lcom/oplus/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->getStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0

    :cond_41
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p0}, Lcom/oplus/compat/view/WindowManagerNative;->access$1700(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_52
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1800()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_67
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before M"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_34

    :try_start_6
    const-class v0, Landroid/view/OplusBaseLayoutParams;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/OplusBaseLayoutParams;

    if-eqz p0, :cond_59

    iput p1, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_59

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManagerNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "no permission to access the blocked field:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {p0, p1}, Lcom/oplus/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_59

    :cond_3e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p0, p1}, Lcom/oplus/compat/view/WindowManagerNative;->access$2200(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_59

    :cond_48
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$2100()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before N"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setPrivateFlag(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_9

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object p0

    :cond_9
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before N"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_34

    :try_start_6
    const-class v0, Landroid/view/OplusBaseLayoutParams;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/OplusBaseLayoutParams;

    if-eqz p0, :cond_59

    iput p1, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_59

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManagerNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "no permission to access the blocked field:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {p0, p1}, Lcom/oplus/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->setStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_59

    :cond_3e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p0, p1}, Lcom/oplus/compat/view/WindowManagerNative;->access$1900(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_59

    :cond_48
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->access$1800()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before M"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
