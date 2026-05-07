.class public Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initViewPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$b;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/uxicon/ui/util/c$a;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const-string p1, "UxChangeIconPanelFragment"

    const-string v0, "initViewPager onItemChoose... "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$b;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0, p2}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
