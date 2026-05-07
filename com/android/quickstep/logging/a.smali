.class public final synthetic Lcom/android/quickstep/logging/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# instance fields
.field public final synthetic a:Landroid/content/SharedPreferences;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/a;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/quickstep/logging/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quickstep/logging/a;->c:Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    return-void
.end method


# virtual methods
.method public final getId()I
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/logging/a;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/quickstep/logging/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/quickstep/logging/a;->c:Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/logging/SettingsChangeLogger;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)I

    move-result p0

    return p0
.end method
