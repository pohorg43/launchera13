.class Lcom/coui/appcompat/lockview/COUILockPatternView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/lockview/COUILockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUILockPatternView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$1;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$1;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
