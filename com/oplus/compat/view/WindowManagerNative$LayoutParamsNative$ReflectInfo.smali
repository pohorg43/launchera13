.class Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static DEFAULT_STATUS_BAR:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static DISABLE_STATUS_BAR:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ENABLE_STATUS_BAR:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static IGNORE_HOME_KEY:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static IGNORE_HOME_MENU_KEY:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static IGNORE_MENU_KEY:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static UNSET_ANY_KEY:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ignoreHomeMenuKey:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static isDisableStatusBar:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1000()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->IGNORE_HOME_MENU_KEY:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$1100()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->UNSET_ANY_KEY:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$1200()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->IGNORE_HOME_KEY:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->IGNORE_MENU_KEY:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->DEFAULT_STATUS_BAR:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$1500()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->DISABLE_STATUS_BAR:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$1600()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->ENABLE_STATUS_BAR:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$1800()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->isDisableStatusBar:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$2100()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative$ReflectInfo;->ignoreHomeMenuKey:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method
