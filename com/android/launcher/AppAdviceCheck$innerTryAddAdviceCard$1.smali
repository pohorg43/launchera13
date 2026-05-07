.class final Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.AppAdviceCheck"
    f = "AppAdviceCheck.kt"
    l = {
        0x112,
        0x16e,
        0x170
    }
    m = "innerTryAddAdviceCard"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->innerTryAddAdviceCard(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb3/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/android/launcher/AppAdviceCheck;->access$innerTryAddAdviceCard(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
