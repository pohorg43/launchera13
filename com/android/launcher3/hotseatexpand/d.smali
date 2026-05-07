.class public final synthetic Lcom/android/launcher3/hotseatexpand/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/hotseatexpand/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/d;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/d;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/d;->a:Lcom/android/launcher3/hotseatexpand/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
