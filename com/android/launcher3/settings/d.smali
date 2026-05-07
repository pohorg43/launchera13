.class public final synthetic Lcom/android/launcher3/settings/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/d;->a:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/settings/d;->a:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

    invoke-static {p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->b(Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
