.class public final Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/shortcuts/IDynamicShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;

.field public static final HOT_GAMES_CLASSNAME_SING:Ljava/lang/String; = "B0A9BBFC05EEE5E7D0A2C97C030586E15BB3301152078F54473BB82DF6D8C818"

.field public static final HOT_GAMES_PACKAGENAME:Ljava/lang/String; = "com.oplus.game.empowerment.folder"

.field public static final SHORTCUT_CAN_ADDED:I = 0x0

.field public static final SHORTCUT_CAN_NOT_ADDED:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;

    invoke-direct {v0}, Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;->$$INSTANCE:Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
