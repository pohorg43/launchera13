.class public final Lcom/android/launcher3/card/theme/data/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DELAY_BETWEEN_INFLATE_TO_VISIBLE:J = 0x28aL

.field public static final INSTANCE:Lcom/android/launcher3/card/theme/data/Constants;

.field public static final JUMP_TO_THEME_STORE_ACTION:Ljava/lang/String; = "com.oplus.themestore.action.widgetcard_switch"

.field public static final JUMP_TO_THEME_STORE_EXTRA_DATA_KEY:Ljava/lang/String; = "extra_data_for_start_theme_store"

.field public static final METHOD_CARD_SWITCH_RESULT:Ljava/lang/String; = "onCardSwitchResult"

.field public static final METHOD_TRANSFORM_BETWEEN_CARD_AND_WIDGET:Ljava/lang/String; = "replace_launcher_card_and_widget"

.field public static final ORIGIN_DISAPPEAR_DURATION:J = 0x12cL

.field public static final RESET_DELAY_FOR_PENDING_STORE_WIDGET_ID:J = 0x384L

.field public static final RESET_TRANSFORMING_STATE_DELAY:J = 0x2bcL

.field public static final TARGET_APPEAR_DURATION:J = 0x190L

.field public static final TARGET_APPEAR_STATE_DELAY:J = 0x64L

.field public static final THEME_STORE_PACKAGE_NAME_HEYTAP:Ljava/lang/String; = "com.heytap.themestore"

.field public static final THEME_STORE_PACKAGE_NAME_OPLUS:Ljava/lang/String; = "com.oplus.themestore"

.field public static final THEME_STORE_PROVIDER_AUTHORITIES:Ljava/lang/String; = "partner_theme"

.field public static final THEME_STORE_PROVIDER_AUTHORITIES_BACKUP:Ljava/lang/String; = "partner_theme.basic"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/theme/data/Constants;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/data/Constants;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/Constants;->INSTANCE:Lcom/android/launcher3/card/theme/data/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
