.class public final Lcom/android/common/config/Constants$Packages;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/config/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Packages"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.oplus.quickstep.locksetting.ui.BREENOCLEAN"

.field public static final ACTION_CLEAN:Ljava/lang/String; = "com.action.GABREENOCLEAN"

.field public static final ACTION_GOTORECENT:Ljava/lang/String; = "com.action.GAENTER"

.field public static final ACTION_START_HOME:Ljava/lang/String; = "com.android.launcher.action.START_HOME"

.field public static final ASSIST_PACKAGE:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BREENO_PKG_NAME:Ljava/lang/String; = "com.heytap.speechassist"

.field public static final CALL_PKG:Ljava/lang/String; = "CALL_PKG"

.field public static final CLASS_NAME:Ljava/lang/String; = "className"

.field public static final DOMESTIC_SALES_OPWIDGET_PACKAGENAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/common/config/Constants$Packages;

.field public static final LAYOUTRESTOREHELPER_WIDGET_CLASSNAME_OP:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final NEW_WEATHER_WIDGET_INTENT:Ljava/lang/String;

.field public static final OLD_OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final OLD_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

.field private static final OLD_WEATHER_WIDGET_INTENT:Ljava/lang/String;

.field public static final OPLUSWEATHER_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_BACKUPRESTORE_PACKAGENAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_CAMERA_PACKAGE_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final OPLUS_CAMERA_PACKAGE_NAME_DEFAULT:Ljava/lang/String;

.field public static final OPLUS_OPWIDGET_CLOCK_WIDGET_CLASSNAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_OPWIDGET_WEATHER_CLOCK_WIDGET_CLASSNAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_OPWIDGET_WEATHER_WIDGET_CLASSNAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_OSHARE_PACKAGE_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_SYSTEMCLONE_PACKAGENAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PACKAGE_CALENDAR:Ljava/lang/String; = "com.coloros.calendar"

.field public static final PACKAGE_CAMERA:Ljava/lang/String; = "com.oplus.camera"

.field public static final PACKAGE_CLOCK:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PACKAGE_EXPORT_CALENDAR:Ljava/lang/String; = "com.google.android.calendar"

.field public static final PACKAGE_GALLERY:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PACKAGE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final PACKAGE_WEATHER:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final PRIVATE_MUSIC_PAGE_NAME:Ljava/lang/String;

.field public static final SINAGLE_WIGGET_CLASS_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final STK_PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"

.field public static final VERTICAL_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/config/Constants$Packages;

    invoke-direct {v0}, Lcom/android/common/config/Constants$Packages;-><init>()V

    sput-object v0, Lcom/android/common/config/Constants$Packages;->INSTANCE:Lcom/android/common/config/Constants$Packages;

    const v0, 0x7f1203d7

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->ASSIST_PACKAGE:Ljava/lang/String;

    const v0, 0x7f12000b

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f12001d

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->PRIVATE_MUSIC_PAGE_NAME:Ljava/lang/String;

    const v0, 0x7f120011

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OLD_WEATHER_WIDGET_INTENT:Ljava/lang/String;

    const v0, 0x7f120010

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OLD_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f12000c

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_INTENT:Ljava/lang/String;

    const v0, 0x7f12001e

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->VERTICAL_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f120012

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUSWEATHER_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f120018

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    const v0, 0x7f12000f

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OLD_OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    const v0, 0x7f120017

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f12000d

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->SINAGLE_WIGGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f120015

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_OSHARE_PACKAGE_NAME:Ljava/lang/String;

    const v0, 0x7f120014

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_CAMERA_PACKAGE_NAME_DEFAULT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    const-string/jumbo v0, "ro.oplus.system.camera.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_92
    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_CAMERA_PACKAGE_NAME:Ljava/lang/String;

    const v0, 0x7f120013

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_BACKUPRESTORE_PACKAGENAME:Ljava/lang/String;

    const v0, 0x7f120016

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_SYSTEMCLONE_PACKAGENAME:Ljava/lang/String;

    const v0, 0x7f12001a

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->DOMESTIC_SALES_OPWIDGET_PACKAGENAME:Ljava/lang/String;

    const v0, 0x7f120019

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_OPWIDGET_CLOCK_WIDGET_CLASSNAME:Ljava/lang/String;

    const v0, 0x7f12001b

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_OPWIDGET_WEATHER_CLOCK_WIDGET_CLASSNAME:Ljava/lang/String;

    const v0, 0x7f12001c

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_OPWIDGET_WEATHER_WIDGET_CLASSNAME:Ljava/lang/String;

    const v0, 0x7f120033

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->LAYOUTRESTOREHELPER_WIDGET_CLASSNAME_OP:Ljava/lang/String;

    const v0, 0x7f120008

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->PACKAGE_CLOCK:Ljava/lang/String;

    const v0, 0x7f12001f

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->PACKAGE_WEATHER:Ljava/lang/String;

    const v0, 0x7f120009

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants$Packages;->PACKAGE_GALLERY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNEW_WEATHER_WIDGET_INTENT()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_INTENT:Ljava/lang/String;

    return-object p0
.end method

.method public final getOLD_WEATHER_WIDGET_CLASS_NAME()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/common/config/Constants$Packages;->OLD_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public final getOLD_WEATHER_WIDGET_INTENT()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/common/config/Constants$Packages;->OLD_WEATHER_WIDGET_INTENT:Ljava/lang/String;

    return-object p0
.end method

.method public final getOPLUS_CAMERA_PACKAGE_NAME_DEFAULT()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/common/config/Constants$Packages;->OPLUS_CAMERA_PACKAGE_NAME_DEFAULT:Ljava/lang/String;

    return-object p0
.end method

.method public final getPRIVATE_MUSIC_PAGE_NAME()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/common/config/Constants$Packages;->PRIVATE_MUSIC_PAGE_NAME:Ljava/lang/String;

    return-object p0
.end method
