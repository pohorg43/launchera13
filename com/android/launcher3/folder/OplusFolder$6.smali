.class Lcom/android/launcher3/folder/OplusFolder$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/OplusFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCh:I

.field private mDelNums:I

.field private mEditEnd:I

.field private mEditStart:I

.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mDelNums:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v1, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v0, v0, Lcom/android/launcher3/folder/OplusFolder;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07060f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2b
    if-le v0, v1, :cond_ad

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditStart:I

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditEnd:I

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    if-gt v2, v1, :cond_55

    goto :goto_ad

    :cond_55
    iget v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditStart:I

    if-lez v2, :cond_87

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditEnd:I

    if-ge v3, v2, :cond_5e

    goto :goto_87

    :cond_5e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditStart:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mCh:I

    const v3, 0xd800

    if-lt v2, v3, :cond_7a

    const v3, 0xdfff

    if-gt v2, v3, :cond_7a

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mDelNums:I

    goto :goto_7c

    :cond_7a
    iput v4, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mDelNums:I

    :goto_7c
    iget v2, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditStart:I

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mDelNums:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditEnd:I

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_2b

    :cond_87
    :goto_87
    const-string v0, "afterTextChanged  editStart = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", editEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolder$6;->mEditEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusFolder"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    :goto_ad
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder$6;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
