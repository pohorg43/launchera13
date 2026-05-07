.class public Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cell"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:F

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard;IILcom/coui/appcompat/lockview/COUINumericKeyboard$1;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, ""

    iput-object p4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->c:Ljava/lang/String;

    const/high16 p4, 0x3f800000  # 1.0f

    iput p4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->d:F

    sget p4, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f0:I

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c(II)V

    iput p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    iput p3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    return p0
.end method

.method public getRow()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    return p0
.end method

.method public setCellNumberAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->d:F

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCellNumberTranslateX(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->e:I

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCellNumberTranslateY(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->f:I

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "row "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
