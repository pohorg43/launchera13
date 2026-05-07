.class final Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/side/LearningGesturesActivity;->bindView(I)Ly2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic $idRes:I

.field public final synthetic this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/LearningGesturesActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    iput p2, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;->$idRes:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    iget p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;->$idRes:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;->invoke()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
