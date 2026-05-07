.class public final Lcom/android/common/config/OplusFeatureFlags;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUTOMATIC_ADD_REDUNDANT_ITEMS_TO_WORKSPACE:Z = true

.field public static final DISABLE_ADAPTIVE_FOLDER_ICON:Z = true

.field public static final DISABLE_ADAPTIVE_ICON_ANIM_WHEN_DRAG:Z = true

.field public static final DISABLE_CHANGE_THEME_BY_WALLPAPER_CHANGE:Z = true

.field public static final DISABLE_DRAG_HANDLE_DRAWABLE:Z = true

.field public static final DISABLE_LAUNCHER3_OPTION_MENU:Z = true

.field public static final DISABLE_LAUNCHER_DENSITY_CHANGE:Z = true

.field public static final DISABLE_LAUNCHER_ROTATION:Z = true

.field public static final DISABLE_POPUP_CONTAINER_WIDGET:Z = true

.field public static final DISABLE_REORDER_PREVIEW_ANIMATION:Z = true

.field public static final DISABLE_SHOW_NOTIFICATION_ON_DEEP_SHORTCUT:Z = true

.field public static final FIT_ALL_WIDGET_INSIDE_OF_CELL_LAYOUT:Z = true

.field public static final INIT_WIDGET_SPAN_XY_WITH_PORTRAIT:Z = true

.field public static final INSTANCE:Lcom/android/common/config/OplusFeatureFlags;

.field public static final IS_DIRECT_BOOT_AWARE_ON:Z = true

.field public static final IS_OPLUS_DOGFOOD_BUILD:Z = false

.field public static final IS_OPLUS_SUPPORT_SUPER_POWER_SAVE:Z = true

.field public static final IS_STABLE_RELEASE:Z = true

.field public static final KEEP_CURRENT_STATE_WHEN_DROP_ITEM:Z = true

.field public static final KEEP_WORKSPACE_SCREEN_TABLE:Z = true

.field public static final MOVE_LAST_ITEM_TO_NEXT_SCREEN_WHEN_SINGLE_DRAG:Z = true

.field public static final MULTI_APP_TEMP_COMPATIBILITY:Z = true

.field public static final OPLUS_DISABLE_CUSTOM_SHORTCUTS:Z = true

.field public static final REORDER_WHEN_DRAG_WIDGET:Z = true

.field public static final SHOW_HIDDEN_ICON_APPS_ENABLED:Z = false

.field public static final SYSUI_NAVBAR_MODE_CHANGE_MONITOR:Z = false

.field public static final TRACE_APP_DELETE_ACTION:Z = true

.field public static final TRACE_LAUNCHER_LAYOUT:Z = true

.field public static final TWO_PANEL_SHOW_EMPTY_PAGE:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/config/OplusFeatureFlags;

    invoke-direct {v0}, Lcom/android/common/config/OplusFeatureFlags;-><init>()V

    sput-object v0, Lcom/android/common/config/OplusFeatureFlags;->INSTANCE:Lcom/android/common/config/OplusFeatureFlags;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
