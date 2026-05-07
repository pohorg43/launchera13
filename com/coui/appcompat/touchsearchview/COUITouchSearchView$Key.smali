.class Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Key"
.end annotation


# instance fields
.field public mHiddenCharList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIndexInOriginalArray:I

.field public mIsDot:Z

.field public mLeft:I

.field public mText:Ljava/lang/String;

.field public mTextPaint:Landroid/text/TextPaint;

.field public mTop:I

.field public mTouchBottom:I

.field public mTouchTop:I

.field public final synthetic this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->this$0:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    new-instance p2, Landroid/text/TextPaint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$200(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)I

    move-result p2

    if-nez p2, :cond_22

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$300(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)I

    move-result p2

    :cond_22
    iget-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$500(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$402(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$400(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-nez p2, :cond_3c

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$600(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$402(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_3c
    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$700(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_4b

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->access$700(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4b
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeft()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mLeft:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTop()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTop:I

    return p0
.end method

.method public setLeft(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mLeft:I

    return-void
.end method

.method public setTop(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTop:I

    return-void
.end method
