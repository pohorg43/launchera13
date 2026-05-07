.class public final synthetic Lcom/android/launcher/settings/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic b:Lcom/android/launcher/widget/RemoveWidgetDialog;

.field public final synthetic c:Lcom/android/launcher/Launcher;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher/Launcher;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/h;->a:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p2, p0, Lcom/android/launcher/settings/h;->b:Lcom/android/launcher/widget/RemoveWidgetDialog;

    iput-object p3, p0, Lcom/android/launcher/settings/h;->c:Lcom/android/launcher/Launcher;

    iput-object p4, p0, Lcom/android/launcher/settings/h;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/h;->a:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher/settings/h;->b:Lcom/android/launcher/widget/RemoveWidgetDialog;

    iget-object v2, p0, Lcom/android/launcher/settings/h;->c:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/settings/h;->d:Landroid/view/View;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
