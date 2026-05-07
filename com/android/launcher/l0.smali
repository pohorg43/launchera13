.class public final synthetic Lcom/android/launcher/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

.field public final synthetic b:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/l0;->a:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    iput-object p2, p0, Lcom/android/launcher/l0;->b:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/l0;->a:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    iget-object p0, p0, Lcom/android/launcher/l0;->b:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->a(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Landroid/view/View;)V

    return-void
.end method
