.class public final Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

.field private static final PHONE_MANAGER_ENTRANCE_FIRST_DISPLAY:Ljava/lang/String; = "Phone_Manager_Entrance_First_Display_tip_key"

.field private static final TAG:Ljava/lang/String; = "PhoneManagerEntranceGuide"

.field private static volatile hasInitial:Z

.field private static hasShowGuide:Z

.field private static showPhoneManagerEntranceTip:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-direct {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-static {p2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    const-string p2, "Phone_Manager_Entrance_First_Display_tip_key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    sput-boolean p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasShowGuide:Z

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_1e

    :cond_13
    const-string p0, "updateAndRecordPref, error key: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneManagerEntranceGuide"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->showPhoneManagerEntranceTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_f

    goto :goto_16

    :cond_f
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-ne p0, v1, :cond_16

    move v0, v1

    :cond_16
    :goto_16
    if-eqz v0, :cond_20

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->showPhoneManagerEntranceTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez p0, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_20
    :goto_20
    return-void
.end method

.method public final hasShowGuide()Z
    .registers 2

    sget-boolean p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasShowGuide:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "hasShowGuide: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneManagerEntranceGuide"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasShowGuide:Z

    return p0
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasInitial:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_26

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    sput-boolean v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasInitial:Z

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p1

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const-string v0, "Phone_Manager_Entrance_First_Display_tip_key"

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v1

    :cond_22
    sput-boolean v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasShowGuide:Z
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final reset()V
    .registers 1

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->showPhoneManagerEntranceTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final showPhoneManagerEntranceTip(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Phone_Manager_Entrance_First_Display_tip_key"

    invoke-direct {p1, v1, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->showPhoneManagerEntranceTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method
