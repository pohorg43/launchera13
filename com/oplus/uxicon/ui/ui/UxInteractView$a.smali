.class public Lcom/oplus/uxicon/ui/ui/UxInteractView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxInteractView;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxInteractView;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$a;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$a;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$002(Lcom/oplus/uxicon/ui/ui/UxInteractView;Z)Z

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$a;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-virtual {p0, p2}, Lb/h;->onFontSizeChange(I)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 2

    return-void
.end method
