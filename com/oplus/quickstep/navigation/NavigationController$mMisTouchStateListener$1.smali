.class public final Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/navigation/NavigationController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/navigation/NavigationController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->access$updateMistouchState(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->access$notifyMistouchStateChange(Lcom/oplus/quickstep/navigation/NavigationController;)V

    return-void
.end method
