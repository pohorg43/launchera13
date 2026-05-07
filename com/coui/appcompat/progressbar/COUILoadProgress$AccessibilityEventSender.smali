.class Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUILoadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/progressbar/COUILoadProgress;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;Lcom/coui/appcompat/progressbar/COUILoadProgress$1;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;->a:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;->a:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/Button;->sendAccessibilityEvent(I)V

    return-void
.end method
