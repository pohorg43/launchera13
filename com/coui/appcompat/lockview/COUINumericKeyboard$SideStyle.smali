.class public Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:F

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    iget-object p2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->b:Ljava/lang/String;

    iget p2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->c:I

    iput p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->c:I

    iget p2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->d:F

    iput p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->d:F

    iget-object p2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->e:Ljava/lang/String;

    iget p1, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->f:I

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->f:I

    return-void
.end method
