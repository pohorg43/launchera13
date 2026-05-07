.class public final Lcom/android/common/config/Properties;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COTA_PROPERTY:Ljava/lang/String; = "sys.cotaimg.verify"

.field public static final FACTORY_KEY_MODE_PROPERTY:Ljava/lang/String; = "ro.oplus.image.my_engineering.type"

.field public static final FACTORY_VALUE_MODE_PROPERTY:Ljava/lang/String; = "factory"

.field public static final INSTANCE:Lcom/android/common/config/Properties;

.field public static final KEY_CRYPTO_STATE:Ljava/lang/String; = "ro.crypto.state"

.field public static final KEY_CRYPTO_TYPE:Ljava/lang/String; = "ro.crypto.type"

.field public static final KEY_HIDE_NAVBAR:Ljava/lang/String; = "nav_bar_immersive"

.field public static final PROPERTY_KEY_GOOGLE_CLIENT_ID_BASE_MS:Ljava/lang/String; = "ro.com.google.clientidbase.ms"

.field public static final PROPERTY_KEY_SUPPORT_GOOGLE_RSA3:Ljava/lang/String; = "ro.oplus.rsa3.support"

.field public static final PROPERTY_OS_VERSION:Ljava/lang/String; = "ro.build.version.oplusrom"

.field public static final PROPERTY_VALUE_GOOGLE_RSA:Ljava/lang/String; = "android-oplus-rev1"

.field public static final PROPERTY_VALUE_IS_GOOGLE_RSA3:Ljava/lang/String; = "true"

.field public static final PROP_ASSERT_PANIC:Ljava/lang/String; = "persist.sys.assert.panic"

.field public static final PROP_DEBUG_DRAW_BACKGROUND:Ljava/lang/String; = "debug.launcher.draw.background"

.field public static final PROP_DEBUG_FOLDER_MAX_PAGES:Ljava/lang/String; = "debug.launcher.folder.max.pages"

.field public static final PROP_DEBUG_WORKSPACE_MAX_PAGES:Ljava/lang/String; = "debug.launcher.workspace.max.pages"

.field public static final PROP_KEY_SOTA_STATE:Ljava/lang/String; = "persist.sys.sota.state"

.field public static final PROP_VALUE_SOTA_ACTIVE:Ljava/lang/String; = "Active"

.field public static final SSV_OPERATOR_PROPERTY:Ljava/lang/String; = "persist.sys.oplus_opta"

.field public static final SSV_REGION_PROPERTY:Ljava/lang/String; = "persist.sys.oplus_optb"

.field public static final SYSTEM_PROPERTIES_ANIMATION_LEVEL:Ljava/lang/String; = "persist.sys.oplus.anim_level"

.field public static final SYSTEM_PROPERTIES_THEMEFLAG:Ljava/lang/String; = "persist.sys.themeflag"

.field public static final SYSTEM_PROPERTIES_THEME_VERSION:Ljava/lang/String; = "ro.oplus.theme.version"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/config/Properties;

    invoke-direct {v0}, Lcom/android/common/config/Properties;-><init>()V

    sput-object v0, Lcom/android/common/config/Properties;->INSTANCE:Lcom/android/common/config/Properties;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
