.class public final Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;
.super Lcom/oplus/quickstep/common/AbsSettingsValueProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;
    }
.end annotation


# static fields
.field public static final BRACKET_MODE_OPEN:I = 0x1

.field public static final BRACKET_SPACE_OPEN:I = 0x1

.field public static final CHILD_MODE_STATE_OFF:I = 0x0

.field public static final CHILD_MODE_STATE_ON:I = 0x1

.field public static final Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

.field public static final DEVICE_STATE_CLOSE:I = 0x0

.field public static final DEVICE_STATE_HALF_OPEN:I = 0x2

.field public static final DEVICE_STATE_OPEN:I = 0x3

.field public static final DEVICE_STATE_TENT:I = 0x1

.field private static final FOCUS_MODE_PKG:Ljava/lang/String;

.field public static final FOCUS_MODE_STATE_DEFAULT:I = 0x0

.field public static final FOCUS_MODE_STATE_ON:I = 0x1

.field public static final KEY_BRACKET_SPACE_MODE:Ljava/lang/String; = "bracket_mode_settings"

.field public static final KEY_BRACKET_SPACE_SWITCH:Ljava/lang/String; = "bracket_space_main_switch"

.field public static final KEY_CHILD_MODE_STATE:Ljava/lang/String; = "children_mode_on"

.field public static final KEY_FOCUS_MODE_STATE:Ljava/lang/String; = "focusmode_switch"

.field public static final KEY_OPLUS_SYSTEM_DEVICE_STATE:Ljava/lang/String; = "oplus_system_device_state"

.field public static final KEY_STUDY_MODE_STATE:Ljava/lang/String; = "STUDY_CENTER_MODE"

.field public static final KEY_SUPER_POWERSAVE_MODE_STATE:Ljava/lang/String; = "super_powersave_mode_state"

.field public static final KEY_SYSTEM_FOLDING_ANGLE:Ljava/lang/String; = "system_folding_angle_for_oplus"

.field public static final KEY_WELL_BEING_ASSISTANT_MODE_STATE:Ljava/lang/String; = "key_well_being_assistant_mode_state"

.field public static final STUDY_MODE_STATE_OFF:I = 0x0

.field public static final STUDY_MODE_STATE_ON:I = 0x1

.field public static final SUPER_POWERSAVE_MODE_STATE_OFF:I = 0x0

.field public static final SUPER_POWERSAVE_MODE_STATE_ON:I = 0x1

.field public static final WELL_BEING_ASSISTANT_OFF:I = 0x0

.field public static final WELL_BEING_ASSISTANT_ON:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    const v0, 0x7f120006

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->FOCUS_MODE_PKG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFOCUS_MODE_PKG$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->FOCUS_MODE_PKG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkValidity(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
