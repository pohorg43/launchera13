.class Lcom/oplus/compat/app/WindowConfigurationNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/WindowConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field public static WINDOWING_MODE_FULLSCREEN:Lcom/oplus/utils/reflect/RefInt;

.field public static WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:Lcom/oplus/utils/reflect/RefInt;

.field public static WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:Lcom/oplus/utils/reflect/RefInt;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/app/WindowConfigurationNative$ReflectInfo;

    const-class v1, Landroid/app/WindowConfiguration;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
