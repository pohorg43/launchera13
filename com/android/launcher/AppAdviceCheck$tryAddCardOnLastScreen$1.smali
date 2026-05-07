.class final Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck"
    f = "AppAdviceCheck.kt"
    l = {
        0x217,
        0x219
    }
    m = "tryAddCardOnLastScreen"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->tryAddCardOnLastScreen(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/launcher/AppAdviceCheck;


# direct methods
.method public constructor <init>(Lcom/android/launcher/AppAdviceCheck;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/AppAdviceCheck;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->this$0:Lcom/android/launcher/AppAdviceCheck;

    invoke-direct {p0, p2}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->label:I

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->this$0:Lcom/android/launcher/AppAdviceCheck;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/launcher/AppAdviceCheck;->access$tryAddCardOnLastScreen(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
